abstract class EnquiryEvent {}

class ButtonClickEnquiryEvent extends EnquiryEvent {
  String? name;
  String? email;
  String? mobile;
  String? message;
  String? address;
  String? refBy;
  String? product;
  String? members;
  String? dof;
  String? att;
  String? addedBy;

  ButtonClickEnquiryEvent(
      {this.name,
      this.email,
      this.mobile,
      this.address,
      this.message,
      this.refBy,
      this.product,
      this.members,
      this.dof,
      this.att,
      this.addedBy});
}
