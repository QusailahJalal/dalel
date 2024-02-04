import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/features/on_boarding/presentation/widgets/on_boarding_widget_body.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          OnBoardingWidgetBody(),
          
        ],
      ),
    ));
  }
}
