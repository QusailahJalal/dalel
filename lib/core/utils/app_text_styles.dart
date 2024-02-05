import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyles {
  static final pasifico400Style64 = TextStyle(
    color: AppColors.deepBrown,
    fontSize: 64,
    fontWeight: FontWeight.w400,
    fontFamily: 'Pasifico',
  );
  static final poppins500Style24 = TextStyle(
    color: AppColors.black,
    fontSize: 24,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
  );
  static final poppins300Style16 = TextStyle(
    color: AppColors.black,
    fontSize: 16,
    fontWeight: FontWeight.w300,
    fontFamily: 'Poppins',
  );
}
