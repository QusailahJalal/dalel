import 'package:flutter/material.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import '../widgets/custom_sign_up_form.dart';
import '../widgets/have_an_acount_widget.dart';
import '../widgets/welcome_text_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 152)),
            SliverToBoxAdapter(
              child: WelcomeTextWidget(text: AppStrings.welcome),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 28)),
            SliverToBoxAdapter(
              child: CustomSignUpForm()
            ),
            SliverToBoxAdapter(
              child: Align(
                child: HoveAnAcountWidget(
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
