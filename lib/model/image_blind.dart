import 'dart:ui';
import 'package:flutter/foundation.dart';
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

  Future<img.Image> toDeuteranopesF(img.Image image) async {
    return await compute(toDeuteranopes, image);
  }

  img.Image toDeuteranopes(img.Image image) {
    for (var pixel in image) {
      Color color = Color.fromARGB(
        pixel.a.toInt(),
        pixel.r.toInt(),
        pixel.g.toInt(),
        pixel.b.toInt(),
      );
      color = color.toDeuteranopes();
      pixel.setRgb(color.red, color.green, color.blue);
    }
    return image;
  }

  Future<img.Image> toProtanopesF(img.Image image) async {
    return await compute(toProtanopes, image);
  }

  img.Image toProtanopes(img.Image image) {
    for (var pixel in image) {
      Color color = Color.fromARGB(
        pixel.a.toInt(),
        pixel.r.toInt(),
        pixel.g.toInt(),
        pixel.b.toInt(),
      );
      color = color.toDeuteranopes();
      pixel.setRgb(color.red, color.green, color.blue);
    }
    return image;
  }