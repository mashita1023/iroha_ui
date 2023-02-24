import 'dart:ui';
import 'package:image/image.dart' as img;
import 'package:color_simulator/model/color_blind.dart';

extension ImageBlind on img.Image {
  void toDeuteranopes() {
    for (var pixel in this) {
      Color color = Color.fromARGB(
        pixel.a.toInt(),
        pixel.r.toInt(),
        pixel.g.toInt(),
        pixel.b.toInt(),
      );
      color = color.toDeuteranopes();
      pixel.setRgb(color.red, color.green, color.blue);
    }
  }

  void toProtanopes() {
    for (var pixel in this) {
      Color color = Color.fromARGB(
        pixel.a.toInt(),
        pixel.r.toInt(),
        pixel.g.toInt(),
        pixel.b.toInt(),
      );
      color = color.toDeuteranopes();
      pixel.setRgb(color.red, color.green, color.blue);
    }
  }
}
