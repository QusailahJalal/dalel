import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/services/service_locator.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool visited =
        getIt<CacheHelper>().getData(key: 'onBoardingVisited') ?? false;
    if (visited == true) {
      FirebaseAuth.instance.currentUser == null
          ? delayedNavigate(context, '/signUp')
          : delayedNavigate(context, '/home');
    } else {
      delayedNavigate(context, '/onBoarding');
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyles.pasifico400Style64,
        ),
      ),
    );
  }
}

void delayedNavigate(context, path) {
  Future.delayed(const Duration(seconds: 2), () {
    customReplaceNavigate(context, path);
  });
}
