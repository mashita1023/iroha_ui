import 'package:color_simulator/common_widgets/display_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:color_simulator/model/pick_image_notifier.dart';
import 'package:color_simulator/model/color_blind.dart';

class ImageBlindRoute extends GoRouteData {
  const ImageBlindRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const CupertinoPage(
        fullscreenDialog: true,
        child: ImageBlindPage(),
      );
}

// RGB -> LMS => いい感じにする => LMS -> RGB

class ImageBlindPage extends ConsumerWidget {
  const ImageBlindPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void pop() => Navigator.of(context).pop();
    final imageFile =
        ref.watch(pickImageProvider.select((value) => value.imageFile));

    return Scaffold(
      appBar: const CupertinoNavigationBar(
        middle: Text('ImageDisplay'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text("C型"),
            SizedBox(
              width: 240,
              height: 240,
              child: displayImage(imageFile, Blindness.common),
            ),
            const Text("P型"),
            SizedBox(
              width: 240,
              height: 240,
              child: displayImage(imageFile, Blindness.protanope),
            ),
            const Text("D型"),
            SizedBox(
              width: 240,
              height: 240,
              child: displayImage(imageFile, Blindness.deuteranopes),
            ),
          ],
        ),
      ),
    );
  }
}
