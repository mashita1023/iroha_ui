import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'lms.freezed.dart';

@freezed
class LMS with _$LMS {
  factory LMS(
      {@Default(0.1) double l,
      @Default(0.1) double m,
      @Default(0.1) double s}) = _LMS;
  factory LMS.fromRGB({required Color color}) {
    return LMS(
      l: 0.3811 * color.red.toDouble() +
          0.5783 * color.green.toDouble() +
          0.0402 * color.blue.toDouble(),
      m: 0.1967 * color.red.toDouble() +
          0.7244 * color.green.toDouble() +
          0.0782 * color.blue.toDouble(),
      s: 0.0241 * color.red.toDouble() +
          0.1288 * color.green.toDouble() +
          0.8444 * color.blue.toDouble(),
    );
  }
  LMS._();

  Color toRGB() {
    double r = 4.4687 * l - 3.5887 * m + 0.1197 * s;
    double g = -1.2197 * l + 2.3831 * m - 0.1627 * s;
    double b = 0.0585 * l - 0.2612 * m + 1.2063 * s;
    return Color.fromARGB(255, r.toInt(), g.toInt(), b.toInt());
  }
}
