import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'custom_check_box.dart';

class TermsAndConditionsWidgets extends StatelessWidget {
  const TermsAndConditionsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBox(),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: AppStrings.iHaveAgreeToOur,
                  style: CustomTextStyles.poppins400Style12),
              TextSpan(
                  text: AppStrings.termsAndCondition,
                  style: CustomTextStyles.poppins400Style12
                      .copyWith(decoration: TextDecoration.underline)),
            ],
          ),
        ),
      ],
    );
  }
}
  