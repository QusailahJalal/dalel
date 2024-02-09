import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: value,
        side: BorderSide(color: AppColors.grey),
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(4)),
        onChanged: (val) {
          setState(() {
            value = val;
          });
        });
  }
}
