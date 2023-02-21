import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:color_simulator/model/pick_color_notifier.dart';
import 'package:color_simulator/model/lms/lms.dart';
import 'package:color_simulator/model/lms/protanopes_lms.dart';
import 'package:color_simulator/model/lms/deuteranopes_lms.dart';

class ColorDisplayRoute extends GoRouteData {
  const ColorDisplayRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const CupertinoPage(
        fullscreenDialog: true,
        child: ColorDisplayPage(),
      );
}

// RGB -> LMS => いい感じにする => LMS -> RGB

class ColorDisplayPage extends ConsumerWidget {
  const ColorDisplayPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void pop() => Navigator.of(context).pop();
    final Color pickerColor =
        ref.watch(pickColorProvider.select((value) => value.pickColor));
    final LMS lms = LMS.fromRGB(color: pickerColor);
    final ProtanopesLMS pLms = ProtanopesLMS.fromRGB(color: pickerColor);
    final DeuteranopesLMS dLms = DeuteranopesLMS.fromRGB(color: pickerColor);

    return Scaffold(
      appBar: const CupertinoNavigationBar(
        middle: Text('ColorDisplay'),
      ),
      body: SingleChildScrollView(child:Column(
        children: [
          Text(pickerColor.toString()),
          Container(
            width: 240,
            height: 240,
            color: pickerColor,
          ),
          Text(lms.toString()),
          Text(lms.toRGB().toString()),
          Container(
            width: 240,
            height: 240,
            color: lms.toRGB(),
          ),
          Text(pLms.toString()),
          Text(pLms.toRGB().toString()),
          Container(
            width: 240,
            height: 240,
            color: pLms.toRGB(),
          ),
          Text(dLms.toString()),
          Text(dLms.toRGB().toString()),
          Container(
            width: 240,
            height: 240,
            color: dLms.toRGB(),
          ),
        ],
      ),
      ),
    );
  }
}
