abstract class LoginEvent {}

class LoginButtonClickEvent extends LoginEvent {
  String username;
  String password;
  LoginButtonClickEvent({required this.username, required this.password});
}
