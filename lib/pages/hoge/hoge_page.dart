import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HogeRoute extends GoRouteData {
  const HogeRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const CupertinoPage(
        fullscreenDialog: true,
        child: HogePage(),
      );
}

class HogePage extends ConsumerWidget {
  const HogePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void pop() => Navigator.of(context).pop();
    return Scaffold(
        appBar: CupertinoNavigationBar(
          middle: const Text('Hoge'),
        ),
        body: Column(
          children: const [
            Text('Hoge'),
          ],
        ));
  }
}
