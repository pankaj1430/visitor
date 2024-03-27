import 'package:visiter_app/models/recent_vehicle_model.dart';

abstract class DashboardState {}

class InitialDashboardState extends DashboardState {}

class LoadingDashboardState extends DashboardState {}

class FailDashboardState extends DashboardState {
  String? message;
  FailDashboardState({this.message});
}

class SuccessDashboardState extends DashboardState {
  List<RecentVehicleModel> vehicleList = [];
  String? totalUsers;
  String? totalVehicles;
  SuccessDashboardState(
      {required this.vehicleList, this.totalUsers, this.totalVehicles});
}
