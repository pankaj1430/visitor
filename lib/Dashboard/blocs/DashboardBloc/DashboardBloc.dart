import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visiter_app/Dashboard/blocs/DashboardBloc/DashboardEvent.dart';
import 'package:visiter_app/Dashboard/blocs/DashboardBloc/DashboardState.dart';
import 'package:visiter_app/config/Apiurls.dart';
import 'package:http/http.dart' as http;
import 'package:visiter_app/models/recent_vehicle_model.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(InitialDashboardState()) {
    on<LoadDashboardEvent>(loadDashboardEvent);
  }

  void loadDashboardEvent(LoadDashboardEvent event, Emitter emit) async {
    emit(LoadingDashboardState());

    String? userId = event.userId;
    Map bodyData = {
      'key': Apiurls.KEY,
      'userId': userId,
    };

    dynamic response =
        await http.post(Uri.parse(Apiurls.DASHBOARD), body: bodyData);
    if (response.statusCode == 200) {
      dynamic jsonData = jsonDecode(response.body);
      final vehicleData = jsonData['data'];
      final recentVehicles = vehicleData['top10vehicle'];
      final totalUsersCount = vehicleData['totalReportUploadedCount'];
      final totalVehicle = vehicleData['totalVehicle'];

      List<RecentVehicleModel> tempList = [];
      recentVehicles.forEach((single) {
        RecentVehicleModel vehicleModel = RecentVehicleModel.fromJson(single);
        tempList.add(vehicleModel);
      });

      // data set to state
      emit(SuccessDashboardState(
          vehicleList: tempList,
          totalUsers: totalUsersCount.toString(),
          totalVehicles: totalVehicle.toString()));
    } else {
      dynamic jsonData = jsonDecode(response.body);
      emit(FailDashboardState(message: jsonData['message']));
    }
  }
}
