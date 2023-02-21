// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pick_color_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PickColorState {
  Color get pickColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PickColorStateCopyWith<PickColorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickColorStateCopyWith<$Res> {
  factory $PickColorStateCopyWith(
          PickColorState value, $Res Function(PickColorState) then) =
      _$PickColorStateCopyWithImpl<$Res, PickColorState>;
  @useResult
  $Res call({Color pickColor});
}

/// @nodoc
class _$PickColorStateCopyWithImpl<$Res, $Val extends PickColorState>
    implements $PickColorStateCopyWith<$Res> {
  _$PickColorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickColor = null,
  }) {
    return _then(_value.copyWith(
      pickColor: null == pickColor
          ? _value.pickColor
          : pickColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PickColorStateCopyWith<$Res>
    implements $PickColorStateCopyWith<$Res> {
  factory _$$_PickColorStateCopyWith(
          _$_PickColorState value, $Res Function(_$_PickColorState) then) =
      __$$_PickColorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color pickColor});
}

/// @nodoc
class __$$_PickColorStateCopyWithImpl<$Res>
    extends _$PickColorStateCopyWithImpl<$Res, _$_PickColorState>
    implements _$$_PickColorStateCopyWith<$Res> {
  __$$_PickColorStateCopyWithImpl(
      _$_PickColorState _value, $Res Function(_$_PickColorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickColor = null,
  }) {
    return _then(_$_PickColorState(
      pickColor: null == pickColor
          ? _value.pickColor
          : pickColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_PickColorState extends _PickColorState {
  _$_PickColorState({this.pickColor = const Color(0xFFFFFFFF)}) : super._();

  @override
  @JsonKey()
  final Color pickColor;

  @override
  String toString() {
    return 'PickColorState(pickColor: $pickColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickColorState &&
            (identical(other.pickColor, pickColor) ||
                other.pickColor == pickColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pickColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickColorStateCopyWith<_$_PickColorState> get copyWith =>
      __$$_PickColorStateCopyWithImpl<_$_PickColorState>(this, _$identity);
}

abstract class _PickColorState extends PickColorState {
  factory _PickColorState({final Color pickColor}) = _$_PickColorState;
  _PickColorState._() : super._();

  @override
  Color get pickColor;
  @override
  @JsonKey(ignore: true)
  _$$_PickColorStateCopyWith<_$_PickColorState> get copyWith =>
      throw _privateConstructorUsedError;
}
