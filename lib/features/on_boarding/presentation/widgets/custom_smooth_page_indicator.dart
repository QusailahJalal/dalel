import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utils/app_colors.dart';

// ignore: must_be_immutable
class CustomSmoothPageIndicator extends StatelessWidget {
  CustomSmoothPageIndicator({super.key, required this.controller});
  PageController controller;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SmoothPageIndicator(
        controller: controller,
        count: 03,
        effect: ExpandingDotsEffect(
          activeDotColor: AppColors.deepBrown,
          dotHeight: 7,
          dotWidth: 10,
        ),
      ),
    );
  }
}
