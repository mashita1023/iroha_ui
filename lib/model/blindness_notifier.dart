import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_for_web/image_picker_for_web.dart';
import 'package:image/image.dart' as img;
import 'package:color_simulator/model/image_blind.dart';
import 'pick_image_notifier.dart';

//part 'blindness_notifier.freezed.dart';
part 'blindness_notifier.g.dart';


@riverpod
class BlindnessImage extends _$BlindnessImage {

  @override
  FutureOr build() {
    final pickImage = ref.watch(pickImageProvider);
    return pickImage.imageFile;
  }

  toProtanopesImage () async{
    final imageRef = ref.watch(pickImageProvider);
    final imageFile = imageRef.imageFile;
    if (imageFile == null) return Uint8List(0);
    final image = img.decodeImage(imageFile);
    if (image == null) return Uint8List(0);
    final hoge = await toProtanopesF(image);
    return img.encodeJpg(hoge);
  }

  toDeuteranopesImage() async{
    final imageRef = ref.watch(pickImageProvider);
    final imageFile = imageRef.imageFile;
    if (imageFile == null) return Uint8List(0);
    final image = img.decodeImage(imageFile);
    if (image == null) return Uint8List(0);
    final hoge = await toDeuteranopesF(image);
    return img.encodeJpg(hoge);
  }

}

@riverpod
class ProtanopesImage extends _$ProtanopesImage {
  @override
  FutureOr build() {
    final pickImage = ref.watch(pickImageProvider);
    final imageFile = pickImage.imageFile;
    if (imageFile == null) return Uint8List(0);
    final image = img.decodeImage(imageFile);
    if (image == null) return Uint8List(0);
    final hoge = toProtanopes(image);
    return img.encodeJpg(hoge);
  }
}

@riverpod
class DeuteranopesImage extends _$DeuteranopesImage {
  @override
  FutureOr build() {
    final pickImage = ref.watch(pickImageProvider);
    final imageFile = pickImage.imageFile;
    if (imageFile == null) return Uint8List(0);
    final image = img.decodeImage(imageFile);
    if (image == null) return Uint8List(0);
    final hoge = toDeuteranopes(image);
    return img.encodeJpg(hoge);
  }
}

@riverpod
class TritanopesImage extends _$DeuteranopesImage {
  @override
  FutureOr build() {
    final pickImage = ref.watch(pickImageProvider);
    final imageFile = pickImage.imageFile;
    if (imageFile == null) return Uint8List(0);
    final image = img.decodeImage(imageFile);
    if (image == null) return Uint8List(0);
    final hoge = toDeuteranopes(image);
    return img.encodeJpg(hoge);
  }
}