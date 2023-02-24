import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:color_simulator/model/image_blind.dart';
import 'package:color_simulator/model/color_blind.dart';
import 'package:image/image.dart' as img;

Widget displayImage(Uint8List? imageFile, Blindness blindness) {
  if (imageFile == null) return Image.asset('assets/test.png');
  if (blindness == Blindness.common) return Image.memory(imageFile);

  final image = img.decodeImage(imageFile);
  if (image == null) return Image.asset('assets/test.png');

  if (blindness == Blindness.deuteranopes) {
    image.toDeuteranopes();
  } else if (blindness == Blindness.protanope) {
    image.toProtanopes();
  }
  Uint8List bytes = img.encodeJpg(image);
  return Image.memory(
    bytes,
    frameBuilder: ((context, child, frame, wasSynchronouslyLoaded) {
      if (wasSynchronouslyLoaded) return child;
      return AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: frame != null
            ? child
            : const SizedBox(
                height: 60,
                width: 60,
                child: CircularProgressIndicator(strokeWidth: 6),
              ),
      );
    }),
  );
}
