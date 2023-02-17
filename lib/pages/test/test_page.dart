import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:color_simulator/pages/hoge/hoge_page.dart';
import 'package:color_simulator/router.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CupertinoNavigationBar(
          middle: const Text('Test'),
        ),
        body: Column(
          children: const [
            Text('Hoge'),
          ],
        ));
  }
}
