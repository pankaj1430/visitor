import 'package:visiter_app/models/vehicle_model.dart';

abstract class VehicleListState {}

class InitialVehicleListState extends VehicleListState {}

class LoadingVehicleListState extends VehicleListState {}

class FailVehicleListState extends VehicleListState {
  String? message;
  FailVehicleListState({this.message});
}

class SuccessVehicleListState extends VehicleListState {
  List<VehicleModel> vehicleList = [];
  SuccessVehicleListState({required this.vehicleList});
}
