import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker_for_web/image_picker_for_web.dart';
import 'package:image_picker/image_picker.dart';
import 'package:color_simulator/model/pick_image_notifier.dart';
import 'package:color_simulator/common_widgets/display_image.dart';

class ImagePickerRoute extends GoRouteData {
  const ImagePickerRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const CupertinoPage(
        fullscreenDialog: true,
        child: ImagePickerPage(),
      );
}

class ImagePickerPage extends ConsumerWidget {
  const ImagePickerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void pop() => Navigator.of(context).pop();
    final imageFile =
        ref.watch(pickImageProvider.select((value) => value.imageFile));
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        middle: Text('Image Picker'),
      ),
      body: Column(
        children: [
          const Text('Image Picker'),
          Stack(
            children: [
              SizedBox(
                width: 240,
                height: 240,
                child: displayImage(imageFile),
              ),
              RawMaterialButton(
                onPressed: () async {
                  final image = await ImagePickerPlugin()
                      .pickImage(source: ImageSource.gallery);
                  await ref.read(pickImageProvider.notifier).pickImage(image);
                },
                child: const SizedBox(
                  width: 240,
                  height: 240,
//                    child: ColoredBox(color: Colors.red),
                ),
              ),
            ],
          ),
          RawMaterialButton(
            onPressed: () => context.go('/image/display'),
            child: const Text('次へ'),
          ),
        ],
      ),
    );
  }
}
