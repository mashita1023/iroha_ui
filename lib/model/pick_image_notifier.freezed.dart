// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pick_image_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PickImageState {
  Uint8List? get imageFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PickImageStateCopyWith<PickImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickImageStateCopyWith<$Res> {
  factory $PickImageStateCopyWith(
          PickImageState value, $Res Function(PickImageState) then) =
      _$PickImageStateCopyWithImpl<$Res, PickImageState>;
  @useResult
  $Res call({Uint8List? imageFile});
}

/// @nodoc
class _$PickImageStateCopyWithImpl<$Res, $Val extends PickImageState>
    implements $PickImageStateCopyWith<$Res> {
  _$PickImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFile = freezed,
  }) {
    return _then(_value.copyWith(
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PickImageStateCopyWith<$Res>
    implements $PickImageStateCopyWith<$Res> {
  factory _$$_PickImageStateCopyWith(
          _$_PickImageState value, $Res Function(_$_PickImageState) then) =
      __$$_PickImageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uint8List? imageFile});
}

/// @nodoc
class __$$_PickImageStateCopyWithImpl<$Res>
    extends _$PickImageStateCopyWithImpl<$Res, _$_PickImageState>
    implements _$$_PickImageStateCopyWith<$Res> {
  __$$_PickImageStateCopyWithImpl(
      _$_PickImageState _value, $Res Function(_$_PickImageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFile = freezed,
  }) {
    return _then(_$_PickImageState(
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$_PickImageState extends _PickImageState with DiagnosticableTreeMixin {
  _$_PickImageState({this.imageFile}) : super._();

  @override
  final Uint8List? imageFile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickImageState(imageFile: $imageFile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PickImageState'))
      ..add(DiagnosticsProperty('imageFile', imageFile));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickImageState &&
            const DeepCollectionEquality().equals(other.imageFile, imageFile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageFile));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickImageStateCopyWith<_$_PickImageState> get copyWith =>
      __$$_PickImageStateCopyWithImpl<_$_PickImageState>(this, _$identity);
}

abstract class _PickImageState extends PickImageState {
  factory _PickImageState({final Uint8List? imageFile}) = _$_PickImageState;
  _PickImageState._() : super._();

  @override
  Uint8List? get imageFile;
  @override
  @JsonKey(ignore: true)
  _$$_PickImageStateCopyWith<_$_PickImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
