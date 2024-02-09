import 'package:flutter/material.dart';

class HoveAnAcountWidget extends StatelessWidget {
  const HoveAnAcountWidget(
      {super.key, required this.text1, required this.text2});
  final String text1, text2;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: text1),
          TextSpan(text: text2),
        ],
      ),
    );
  }
}
