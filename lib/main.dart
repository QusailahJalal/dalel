import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/featuers/splash/presentaion/views/splash_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'core/routers/app_router.dart';

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
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}


