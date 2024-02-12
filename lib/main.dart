import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:dalel_app/core/routes/app_router.dart';
import 'package:dalel_app/core/services/service_locator.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupServiceLocator();

  await getIt<CacheHelper>().init();
  runApp(
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) => const Dalel(),
    //    // Wrap your app
    // ),
    const Dalel(),
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
