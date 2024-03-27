abstract class ChangePasswordState {}

class InitialChangePasswordState extends ChangePasswordState {}

class LoadingChangePasswordState extends ChangePasswordState {}

class SuccessChangePasswordState extends ChangePasswordState {
  String? message;
  SuccessChangePasswordState({this.message});
}

class FailChangePasswordState extends ChangePasswordState {
  String message;
  FailChangePasswordState({required this.message});
}
