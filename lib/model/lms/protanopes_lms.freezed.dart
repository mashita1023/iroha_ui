// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'protanopes_lms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProtanopesLMS {
  double get l => throw _privateConstructorUsedError;
  double get m => throw _privateConstructorUsedError;
  double get s => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProtanopesLMSCopyWith<ProtanopesLMS> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProtanopesLMSCopyWith<$Res> {
  factory $ProtanopesLMSCopyWith(
          ProtanopesLMS value, $Res Function(ProtanopesLMS) then) =
      _$ProtanopesLMSCopyWithImpl<$Res, ProtanopesLMS>;
  @useResult
  $Res call({double l, double m, double s});
}

/// @nodoc
class _$ProtanopesLMSCopyWithImpl<$Res, $Val extends ProtanopesLMS>
    implements $ProtanopesLMSCopyWith<$Res> {
  _$ProtanopesLMSCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? l = null,
    Object? m = null,
    Object? s = null,
  }) {
    return _then(_value.copyWith(
      l: null == l
          ? _value.l
          : l // ignore: cast_nullable_to_non_nullable
              as double,
      m: null == m
          ? _value.m
          : m // ignore: cast_nullable_to_non_nullable
              as double,
      s: null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProtanopesLMSCopyWith<$Res>
    implements $ProtanopesLMSCopyWith<$Res> {
  factory _$$_ProtanopesLMSCopyWith(
          _$_ProtanopesLMS value, $Res Function(_$_ProtanopesLMS) then) =
      __$$_ProtanopesLMSCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double l, double m, double s});
}

/// @nodoc
class __$$_ProtanopesLMSCopyWithImpl<$Res>
    extends _$ProtanopesLMSCopyWithImpl<$Res, _$_ProtanopesLMS>
    implements _$$_ProtanopesLMSCopyWith<$Res> {
  __$$_ProtanopesLMSCopyWithImpl(
      _$_ProtanopesLMS _value, $Res Function(_$_ProtanopesLMS) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? l = null,
    Object? m = null,
    Object? s = null,
  }) {
    return _then(_$_ProtanopesLMS(
      l: null == l
          ? _value.l
          : l // ignore: cast_nullable_to_non_nullable
              as double,
      m: null == m
          ? _value.m
          : m // ignore: cast_nullable_to_non_nullable
              as double,
      s: null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ProtanopesLMS extends _ProtanopesLMS {
  _$_ProtanopesLMS({this.l = 0.1, this.m = 0.1, this.s = 0.1}) : super._();

  @override
  @JsonKey()
  final double l;
  @override
  @JsonKey()
  final double m;
  @override
  @JsonKey()
  final double s;

  @override
  String toString() {
    return 'ProtanopesLMS(l: $l, m: $m, s: $s)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProtanopesLMS &&
            (identical(other.l, l) || other.l == l) &&
            (identical(other.m, m) || other.m == m) &&
            (identical(other.s, s) || other.s == s));
  }

  @override
  int get hashCode => Object.hash(runtimeType, l, m, s);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProtanopesLMSCopyWith<_$_ProtanopesLMS> get copyWith =>
      __$$_ProtanopesLMSCopyWithImpl<_$_ProtanopesLMS>(this, _$identity);
}

abstract class _ProtanopesLMS extends ProtanopesLMS {
  factory _ProtanopesLMS({final double l, final double m, final double s}) =
      _$_ProtanopesLMS;
  _ProtanopesLMS._() : super._();

  @override
  double get l;
  @override
  double get m;
  @override
  double get s;
  @override
  @JsonKey(ignore: true)
  _$$_ProtanopesLMSCopyWith<_$_ProtanopesLMS> get copyWith =>
      throw _privateConstructorUsedError;
}
