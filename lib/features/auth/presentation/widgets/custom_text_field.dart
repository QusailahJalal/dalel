import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.lable,
      this.onChanged,
      this.onFieldSubmitted,
      this.obscureText,
      this.icon});
  final String lable;
  final void Function(String)? onChanged, onFieldSubmitted;
  final bool? obscureText;
  final IconButton? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 8.0, right: 8.0, top: 12, bottom: 12),
      child: TextFormField(
        obscureText: obscureText ?? false,
        validator: (value) {
          if (value!.isEmpty) {
            return ('this field is required');
          } else {
            return null;
          }
        },
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
            labelText: lable,
            suffixIcon: icon,
            labelStyle: CustomTextStyles.poppins500Style24
                .copyWith(fontSize: 18, color: AppColors.grey),
            border: getBorderStyle(),
            enabledBorder: getBorderStyle(),
            focusedBorder: getBorderStyle()),
      ),
    );
  }

  OutlineInputBorder getBorderStyle() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: AppColors.grey));
  }
}
