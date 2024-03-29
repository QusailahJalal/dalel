// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  bool? termsAndConditionsCheckBoxValue = false;
  bool isVisablePassword = false;
  GlobalKey<FormState> signUpFormKey = GlobalKey();

  signUpUserWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      // ignore: unused_local_variable
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailureState(
            errorMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailureState(
            errorMessage: 'The account already exists for that email.'));
      }
    } catch (e) {
      emit(SignUpFailureState(errorMessage: e.toString()));
    }
  }

  updateTermsAndConditionsCheckBox({required newValue}) {
    termsAndConditionsCheckBoxValue = newValue;
    emit(TermsAndConditionUpdateState());
  }

  changeThePasswordVisable() {
    isVisablePassword = !isVisablePassword;
    emit(ShowAndHidePasswordState());
  }
}
