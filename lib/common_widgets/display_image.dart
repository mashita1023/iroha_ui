import 'package:color_simulator/model/blindness_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:color_simulator/model/image_blind.dart';
import 'package:color_simulator/model/color_blind.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image/image.dart' as img;
import 'package:color_simulator/model/pick_image_notifier.dart';
import 'package:color_simulator/model/image_blind.dart';

class DisplayImageWidget extends ConsumerWidget {
  const DisplayImageWidget({super.key, required this.blindness});

  final Blindness blindness;
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
      final imageFile = ref.watch(blindnessImageProvider);
      var image = ref.watch(blindnessImageProvider.notifier).toDeuteranopesImage() ?? Uint8List(0);
    return    imageFile.when(
          data: (data) => display(image) ,
          error: (error, stackTrace) => const Text('error'),
          loading: () => const Text('loading'),);
    //return display(image);
  }

  selectProvider() {
    if (blindness == Blindness.deuteranopes) {
        return protanopesImageProvider;
    } else if (blindness == Blindness.protanope) {
      deuteranopesImageProvider;
    } else {
      tritanopesImageProvider;
    }
  }
}

Widget display(Uint8List? imageFile) {
  if (imageFile == null) return Image.asset('assets/test.png');
  if (imageFile.isEmpty) return Image.asset('assets/test.png');
  return Image.memory(
    imageFile,frameBuilder:
                          ((context, child, frame, wasSynchronouslyLoaded) {
                        if (wasSynchronouslyLoaded) return child;
                        return AnimatedSwitcher(
                          duration: const Duration(milliseconds: 200),
                          child: frame != null
                              ? child
                              : SizedBox(
                                height: 60,
                                width: 60,
                                child: CircularProgressIndicator(
                                    strokeWidth: 6),
                              ),
                        );
                      }),
  );
}

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
