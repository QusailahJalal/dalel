import 'package:dalel_app/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:dalel_app/features/on_boarding/presentation/widgets/custom_smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_text_styles.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  const OnBoardingWidgetBody(
      {super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final void Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        controller: controller,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) => ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              width: 343,
              height: 290,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(onBoardingData[index].imagePath),
                    fit: BoxFit.fill),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            CustomSmoothPageIndicator(controller: controller),
            const SizedBox(
              height: 32,
            ),
            Text(
              onBoardingData[index].title,
              style: CustomTextStyles.poppins500Style24.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              onBoardingData[index].subTitle,
              style: CustomTextStyles.poppins300Style16,
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
