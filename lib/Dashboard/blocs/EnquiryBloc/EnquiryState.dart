abstract class EnquiryState {}

class InitialEnquiryState extends EnquiryState {}

class LoadingEnquiryState extends EnquiryState {}

class FailEnquiryState extends EnquiryState {
  String? message;
  FailEnquiryState({this.message});
}

class SuccessEnquiryState extends EnquiryState {
  String? message;
  SuccessEnquiryState({this.message});
}
