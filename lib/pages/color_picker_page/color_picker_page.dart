import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:color_simulator/model/pick_color_notifier.dart';

class ColorPickerRoute extends GoRouteData {
  const ColorPickerRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const CupertinoPage(
        fullscreenDialog: true,
        child: ColorPickerPage(),
      );
}

class ColorPickerPage extends ConsumerWidget {
  const ColorPickerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void pop() => Navigator.of(context).pop();
    final Color pickerColor = ref.watch(pickColorProvider.select((value) => value.pickColor));
    return Scaffold(
        appBar: const CupertinoNavigationBar(
          middle: Text('ColorPicker'),
        ),
        body: Column(
          children: [
            const Text('ColorPicker'),
            Stack(
              children: [
                // HueRingPickerの方が良さそう？
                ColorPicker(
                  pickerColor: pickerColor ,
                  onColorChanged: (value) => {
                    ref.read(pickColorProvider.notifier).pickImage(value)
                   },
                ),
              ],
            ),
            Text(pickerColor.toString()),
          ],
        ),);
  }

}
