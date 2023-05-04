import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'loading_notifier.freezed.dart';
part 'loading_notifier.g.dart';

@riverpod
class Loading extends _$Loading {
  @override
  LoadingState build() => LoadingState();

  Future<void> setLoading(bool isLoading) async {
    state = state.copyWith(isLoading: isLoading);
  }
}

@freezed
class LoadingState with _$LoadingState {
  factory LoadingState({@Default(false) bool isLoading}) =
      _LoadingState;
  LoadingState._();
}
