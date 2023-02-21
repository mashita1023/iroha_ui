// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LMS {
  double get l => throw _privateConstructorUsedError;
  double get m => throw _privateConstructorUsedError;
  double get s => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LMSCopyWith<LMS> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LMSCopyWith<$Res> {
  factory $LMSCopyWith(LMS value, $Res Function(LMS) then) =
      _$LMSCopyWithImpl<$Res, LMS>;
  @useResult
  $Res call({double l, double m, double s});
}

/// @nodoc
class _$LMSCopyWithImpl<$Res, $Val extends LMS> implements $LMSCopyWith<$Res> {
  _$LMSCopyWithImpl(this._value, this._then);

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
abstract class _$$_LMSCopyWith<$Res> implements $LMSCopyWith<$Res> {
  factory _$$_LMSCopyWith(_$_LMS value, $Res Function(_$_LMS) then) =
      __$$_LMSCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double l, double m, double s});
}

/// @nodoc
class __$$_LMSCopyWithImpl<$Res> extends _$LMSCopyWithImpl<$Res, _$_LMS>
    implements _$$_LMSCopyWith<$Res> {
  __$$_LMSCopyWithImpl(_$_LMS _value, $Res Function(_$_LMS) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? l = null,
    Object? m = null,
    Object? s = null,
  }) {
    return _then(_$_LMS(
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

class _$_LMS extends _LMS {
  _$_LMS({this.l = 0.1, this.m = 0.1, this.s = 0.1}) : super._();

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
    return 'LMS(l: $l, m: $m, s: $s)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LMS &&
            (identical(other.l, l) || other.l == l) &&
            (identical(other.m, m) || other.m == m) &&
            (identical(other.s, s) || other.s == s));
  }

  @override
  int get hashCode => Object.hash(runtimeType, l, m, s);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LMSCopyWith<_$_LMS> get copyWith =>
      __$$_LMSCopyWithImpl<_$_LMS>(this, _$identity);
}

abstract class _LMS extends LMS {
  factory _LMS({final double l, final double m, final double s}) = _$_LMS;
  _LMS._() : super._();

  @override
  double get l;
  @override
  double get m;
  @override
  double get s;
  @override
  @JsonKey(ignore: true)
  _$$_LMSCopyWith<_$_LMS> get copyWith => throw _privateConstructorUsedError;
}
