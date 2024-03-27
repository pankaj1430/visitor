abstract class LoginState {}

class InitialLoginState extends LoginState {}

class LoadingLoginState extends LoginState {}

class SuccessLoginState extends LoginState {}

class FailLoginState extends LoginState {
  String message;
  FailLoginState({required this.message});
}
