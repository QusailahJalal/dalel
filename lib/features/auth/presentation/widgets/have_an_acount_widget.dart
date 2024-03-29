import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class HoveAnAcountWidget extends StatelessWidget {
  const HoveAnAcountWidget(
      {super.key, required this.text1, required this.text2, this.onTap});
  final String text1, text2;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: text1, style: CustomTextStyles.poppins400Style12),
            TextSpan(
                text: text2,
                style: CustomTextStyles.poppins400Style12
                    .copyWith(color: AppColors.lightGrey)),
          ],
        ),
      ),
    );
  }
}
