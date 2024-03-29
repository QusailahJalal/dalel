import 'package:dalel/core/utils/app_assets.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
        enabled: true,
        builder: (context) {
          return const Dalel();
        }),
  );
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Image.asset(Assets.imagesOnBoarding2),
      ),
    );
  }
}
