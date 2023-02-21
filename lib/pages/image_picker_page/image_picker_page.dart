import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker_for_web/image_picker_for_web.dart';
import 'package:image_picker/image_picker.dart';
import 'package:color_simulator/model/pick_image_notifier.dart';

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
    final imageFile = ref.watch(pickImageProvider.select((value) => value.imageFile));
    return Scaffold(
        appBar: const CupertinoNavigationBar(
          middle: Text('Input'),
        ),
        body: Column(
          children: [
            const Text('Input'),
            Stack(
              children: [
                SizedBox(
                  width: 240,
                  height: 240,
                  child: displayImage(imageFile),
                ),
                RawMaterialButton(
                  onPressed: () async {
                    final image = await ImagePickerPlugin().pickImage(source: ImageSource.gallery);
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
          ],
        ),);
  }

  Widget displayImage(imageFile) {
    if (imageFile != null){
      return Image.network(imageFile.path, fit: BoxFit.cover);
    } else {
      return Image.asset('assets/test.png');
    }
  }
}
