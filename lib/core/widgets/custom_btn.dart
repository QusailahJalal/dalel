import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final Color? color;
  final String text;
  final VoidCallback? onPressed;
  const CustomBtn({
    super.key,
    this.color,
    required this.text,  this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed ,
        child: Text(
          text,
          style: CustomTextStyles.poppins500Style24.copyWith(
            fontSize: 18,
            color: AppColors.offWhite,
          ),
        ),
      ),
    );
  }
}
