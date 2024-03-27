abstract class UpdateVahanState {}

class InitialUpdateVahanState extends UpdateVahanState {}

class LoadingUpdateVahanState extends UpdateVahanState {}

class FailUpdateVahanState extends UpdateVahanState {
  String? message;
  FailUpdateVahanState({this.message});
}

class SuccessUpdateVahanState extends UpdateVahanState {
  String? message;
  SuccessUpdateVahanState({this.message});
}
