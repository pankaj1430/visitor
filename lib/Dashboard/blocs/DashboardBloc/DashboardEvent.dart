abstract class DashboardEvent {}

class LoadDashboardEvent extends DashboardEvent {
  String? userId;
  LoadDashboardEvent({this.userId});
}
