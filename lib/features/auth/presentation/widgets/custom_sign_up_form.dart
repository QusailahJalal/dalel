// ignore_for_file: unused_import

import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:dalel_app/core/functions/custom_toast.dart';
import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_btn.dart';
import 'package:dalel_app/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel_app/features/auth/presentation/widgets/terms_and_conditions_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class CustomSignUpForm extends StatelessWidget {
  CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpSuccessState) {
          showToast('User created successfully');
          customReplaceNavigate(context, '/home');
        } else if (state is SignUpFailureState) {
          showToast(state.errorMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signUpFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                lable: AppStrings.fristName,
                onChanged: (firstName) {
                  authCubit.firstName = firstName;
                },
              ),
              CustomTextFormField(
                lable: AppStrings.lastName,
                onChanged: (lastName) {
                  authCubit.lastName = lastName;
                },
              ),
              CustomTextFormField(
                lable: AppStrings.emailAddress,
                onChanged: (email) {
                  authCubit.emailAddress = email;
                },
              ),
              CustomTextFormField(
                lable: AppStrings.password,
                onChanged: (password) {
                  authCubit.password = password;
                },
                icon: IconButton(
                    onPressed: () {
                      authCubit.changeThePasswordVisable();
                    },
                    icon: authCubit.isVisablePassword
                        ? Icon(
                            Icons.visibility,
                            color: AppColors.primaryColor,
                          )
                        : Icon(
                            Icons.visibility_off,
                            color: AppColors.grey,
                          )),
                obscureText: !(authCubit.isVisablePassword),
              ),
              const TermsAndConditionsWidgets(),
              const SizedBox(height: 88),
              state is SignUpLoadingState
                  ? CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustomBtn(
                      color: authCubit.termsAndConditionsCheckBoxValue == false
                          ? AppColors.grey
                          : null,
                      text: AppStrings.signUp,
                      onPressed: () {
                        if (authCubit.termsAndConditionsCheckBoxValue == true) {
                          if (authCubit.signUpFormKey.currentState!
                              .validate()) {
                            authCubit.signUpUserWithEmailAndPassword();
                          }
                        }
                      },
                    ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }
}
