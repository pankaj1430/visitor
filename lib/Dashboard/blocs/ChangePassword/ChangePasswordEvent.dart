abstract class ChangePasswordEvent {}

class ChangePasswordButtonClickEvent extends ChangePasswordEvent {
  String oldPassword;
  String newPassword;
  String userId;
  ChangePasswordButtonClickEvent(
      {required this.oldPassword,
      required this.newPassword,
      required this.userId});
}
