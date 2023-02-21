import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:color_simulator/pages/hoge/hoge_page.dart';
import 'package:color_simulator/router.dart';
import 'package:go_router/go_router.dart';

class TestPage extends ConsumerWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: const CupertinoNavigationBar(
          middle: Text('Test'),
        ),
        body: Column(
          children: [
            const Text('Hoge'),
            ElevatedButton(
              child: const Text('Image Picker'),
              onPressed: () => context.go('/image'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/color'),
              child: const Text('Color Picker'),
            )
          ],
        ));
  }
}
