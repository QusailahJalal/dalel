part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class SignUpSuccessState extends AuthState {}

final class SignUpLoadingState extends AuthState {}

final class SignUpFailureState extends AuthState {
  final String errorMessage;

  SignUpFailureState({required this.errorMessage});
}
final class TermsAndConditionUpdateState extends AuthState {}

final class ShowAndHidePasswordState extends AuthState{}
