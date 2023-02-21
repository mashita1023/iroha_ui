import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'deuteranopes_lms.freezed.dart';

@freezed
class DeuteranopesLMS with _$DeuteranopesLMS {
  factory DeuteranopesLMS(
      {@Default(0.1) double l,
      @Default(0.1) double m,
      @Default(0.1) double s}) = _DeuteranopesLMS;
  factory DeuteranopesLMS.fromRGB({required Color color}) {
    const double weight = 0.957237;
    const double bias = 0.0213814;
    double r = weight * color.red.toDouble() + bias;
    double g = weight * color.green.toDouble() + bias;
    double b = weight * color.blue.toDouble() + bias;
    return DeuteranopesLMS(
      l: 17.8824 * r +
         43.5161* g +
          4.11935 * b,
      m: 3.45565 * r +
          27.1554 * g +
          3.86714 * b,
      s: 0.0299566 * r +
          0.184309 * g +
          1.46089 * b,
    );
  }
  DeuteranopesLMS._();

  Color toRGB() {
    double r = 0.080944 * l - 0.130504 * m + 0.116721 * s;
    double g = -0.0102485 * l + 0.0540194 * m - 0.113615 * s;
    double b = -0.000365294 * l - 0.00412163 * m + 0.693513 * s;    
    return Color.fromARGB(255, r.toInt(), g.toInt(), b.toInt());
  }
}
