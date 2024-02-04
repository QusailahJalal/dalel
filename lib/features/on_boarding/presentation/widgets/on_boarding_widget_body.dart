import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/features/on_boarding/presentation/widgets/custom_smooth_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  final PageController _controller = PageController();
  OnBoardingWidgetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) => Column(
          children: [
            Image.asset(Assets.assetsImagesOnBoarding1),
            const SizedBox(
              height: 24,
            ),
            CustomSmoothPage(controller: _controller)
          ],
        ),
      ),
    );
  }
}
