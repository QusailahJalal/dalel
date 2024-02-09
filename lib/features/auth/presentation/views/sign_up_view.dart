import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';
import '../widgets/terms_and_conditions_widgets.dart';
import '../widgets/welcome_text_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 152)),
            const SliverToBoxAdapter(
              child: WelcomeTextWidget(text: AppStrings.welcome),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 28)),
            const SliverToBoxAdapter(
              child: CustomTextField(
                lable: AppStrings.fristName,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(
                lable: AppStrings.lastName,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(
                lable: AppStrings.emailAddress,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(
                lable: AppStrings.password,
              ),
            ),
            const SliverToBoxAdapter(
              child: TermsAndConditionsWidgets(),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 88)),
            SliverToBoxAdapter(
              child: CustomBtn(
                text: AppStrings.signUp,
                onPressed: () {},
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            const SliverToBoxAdapter(
              child: Align(
                child: CustomTextSignInAndSignUp(
                  text1: AppStrings.alreadyHaveAnAccount,
                  text2: AppStrings.signIn,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomTextSignInAndSignUp extends StatelessWidget {
  const CustomTextSignInAndSignUp(
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
