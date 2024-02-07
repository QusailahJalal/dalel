import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/core/widgets/custom_btn.dart';
import 'package:dalel_app/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  const GetButtons(
      {super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return currentIndex == onBoardingData.length - 1
        ? Column(
            children: [
              CustomBtn(
                text: AppStrings.createAccount,
                onPressed: () {
                  customNavigation(context, '/signUp');
                },
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  customNavigation(context, '/signIn');
                },
                child: Text(
                  AppStrings.loginNow,
                  style: CustomTextStyles.poppins300Style16
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ],
          )
        : CustomBtn(
            text: AppStrings.next,
            onPressed: () {
              controller.nextPage(
                  duration: const Duration(microseconds: 200),
                  curve: Curves.bounceIn);
            },
          );
  }
}
