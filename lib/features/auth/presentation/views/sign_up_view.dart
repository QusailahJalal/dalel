import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 108,
            ),
            Center(
              child: Text(
                'Welcome !',
                style: CustomTextStyles.poppins600Style28,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                CacheHelper().removeData(key: 'onBoardingVisited');
              },
              child: Text('Clear'),
            )
          ],
        ),
      ),
    );
  }
}
