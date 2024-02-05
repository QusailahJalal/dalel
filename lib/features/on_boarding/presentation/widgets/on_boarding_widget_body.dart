import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/features/on_boarding/presentation/widgets/custom_smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_text_styles.dart';

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
            Container(
              width: 343,
              height: 290,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Assets.assetsImagesOnBoarding1),
                    fit: BoxFit.fill),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            CustomSmoothPageIndicator(controller: _controller),
            const SizedBox(
              height: 32,
            ),
            Text(
              'Explore The history with Dalel in a smart way',
              style: CustomTextStyles.poppins500Style24.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Using our app’s history libraries you can find many historical periods ',
              style: CustomTextStyles.poppins300Style16,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
