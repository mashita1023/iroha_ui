import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pick_color_notifier.freezed.dart';
part 'pick_color_notifier.g.dart';

@riverpod
class PickColor extends _$PickColor {
  @override
  PickColorState build() => PickColorState();

  Future<void> pickImage(Color color) async{
    state = state.copyWith(pickColor: color);
  }
}

@freezed
class PickColorState with _$PickColorState {
  factory PickColorState({@Default(Color(0xFFFFFFFF)) Color pickColor}) = _PickColorState;
  PickColorState._();
}

