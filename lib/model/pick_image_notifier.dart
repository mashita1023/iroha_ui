import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_for_web/image_picker_for_web.dart';

part 'pick_image_notifier.freezed.dart';
part 'pick_image_notifier.g.dart';

@riverpod
class PickImage extends _$PickImage {
  @override
  PickImageState build() => PickImageState();

  Future<void> pickImage(PickedFile? image) async {
    if (image == null) return;
    state = state.copyWith(imageFile: File(image.path));
  }
}

@freezed
class PickImageState with _$PickImageState {
  factory PickImageState({File? imageFile}) = _PickImageState;
  PickImageState._();
}
