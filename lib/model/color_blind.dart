import 'dart:ui';

/*
Common: 色盲じゃない（男性の95%，女性の99%）
Rotanope: 赤がみにくい (75%)
Deuteranopes: 緑が見にくい (25%)
Tritanope: 青がみにくい
Acromatic: 錐体が1種類
 */
enum Blindness { common, protanope, deuteranopes, tritanopes, acromatic }

extension ColorBlind on Color {
  Color toDeuteranopes() {
    const double weight = 0.957237;
    const double bias = 0.0213814;
    double r = weight * red.toDouble() + bias;
    double g = weight * green.toDouble() + bias;
    double b = weight * blue.toDouble() + bias;

    double l = 17.8824 * r + 43.5161 * g + 4.11935 * b;
    double m = 3.45565 * r + 27.1554 * g + 3.86714 * b;
    double s = 0.0299566 * r + 0.184309 * g + 1.46089 * b;

    double ld = 1 * l + 0 * m + 0 * s;
    double md = 0.494207 * l + 0 * m + 1.24827 * s;
    double sd = 0 * l + 0 * m + 1 * s;

    double rd = 0.080944 * ld - 0.130504 * md + 0.116721 * sd;
    double gd = -0.0102485 * ld + 0.0540194 * md - 0.113615 * sd;
    double bd = -0.000365294 * ld - 0.00412163 * md + 0.693513 * sd;
    return Color.fromARGB(255, rd.toInt(), gd.toInt(), bd.toInt());
  }

  Color toProtanopes() {
    const double weight = 0.992052;
    const double bias = 0.003974;
    double r = weight * red.toDouble() + bias;
    double g = weight * green.toDouble() + bias;
    double b = weight * blue.toDouble() + bias;
    double l = 17.8824 * r + 43.5161 * g + 4.11935 * b;
    double m = 3.45565 * r + 27.1554 * g + 3.86714 * b;
    double s = 0.0299566 * r + 0.184309 * g + 1.46089 * b;

    double lp = 0 * l + 2.02344 * m - 2.52581 * s;
    double mp = 0 * l + 1 * m + 0 * s;
    double sp = 0 * l + 0 * m + 1 * s;

    double rp = 4.4687 * lp - 3.5887 * mp + 0.1197 * sp;
    double gp = -1.2197 * lp + 2.3831 * mp - 0.1627 * sp;
    double bp = 0.0585 * lp - 0.2612 * mp + 1.2063 * sp;
    return Color.fromARGB(255, rp.toInt(), gp.toInt(), bp.toInt());
  }
}
