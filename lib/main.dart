import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:dalel_app/core/routes/app_router.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() async{
  
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper().init();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => Dalel(), // Wrap your app
    ),
  );
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await CacheHelper().init();
//   runApp(Dalel());
// }

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhite),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
