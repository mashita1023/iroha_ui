import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:color_simulator/model/pick_color_notifier.dart';
import 'package:color_simulator/model/color_blind.dart';

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
    final Color pickedColor =
        ref.watch(pickColorProvider.select((value) => value.pickColor));

    return Scaffold(
      appBar: const CupertinoNavigationBar(
        middle: Text('ColorDisplay'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text("C型"),
            Text(pickedColor.toString()),
            Container(
              width: 240,
              height: 240,
              color: pickedColor,
            ),
            const Text("P型"),
            Text(pickedColor.toProtanopes().toString()),
            Container(
              width: 240,
              height: 240,
              color: pickedColor.toProtanopes(),
            ),
            const Text("D型"),
            Text(pickedColor.toDeuteranopes().toString()),
            Container(
              width: 240,
              height: 240,
              color: pickedColor.toDeuteranopes(),
            ),
          ],
        ),
      ),
    );
  }
}
