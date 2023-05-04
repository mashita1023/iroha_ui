import 'package:color_simulator/common_widgets/display_image.dart';
import 'package:color_simulator/model/loading_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:color_simulator/model/pick_image_notifier.dart';
import 'package:color_simulator/model/color_blind.dart';
import 'package:color_simulator/model/blindness_notifier.dart';

class ImageBlindRoute extends GoRouteData {
  const ImageBlindRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const CupertinoPage(
        fullscreenDialog: true,
        child: ImageBlindPage(),
      );
}

class ImageBlindPage extends ConsumerWidget {
  const ImageBlindPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(loadingProvider);
    final imageFile =
        ref.watch(pickImageProvider.select((value) => value.imageFile));
    final protanopesImage = ref.watch(protanopesImageProvider);
    final deuteranopesImage = ref.watch(deuteranopesImageProvider);

    if (isLoading.isLoading) {
      Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).colorScheme.surface,
            ),
            child: Column(
              children: const [
                CircularProgressIndicator(),
                Text('Wait a second.'),
              ],
            ),
          ),
        ),
      );
    }

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
              child: display(protanopesImage.value),
            ),
            const Text("D型"),
            SizedBox(
              width: 240,
              height: 240,
              child: DisplayImageWidget(blindness: Blindness.deuteranopes,)
            ),
            if (!isLoading.isLoading) SizedBox(
              width: 240,
              height: 240,
              child: display(protanopesImage.value),
            ),
          ],
        ),
      ),
    );
  }
}
