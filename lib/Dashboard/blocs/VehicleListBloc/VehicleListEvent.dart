abstract class VehicleListEvent {}

class LoadVehicleListEvent extends VehicleListEvent {
  String? userId;
  LoadVehicleListEvent({this.userId});
}
