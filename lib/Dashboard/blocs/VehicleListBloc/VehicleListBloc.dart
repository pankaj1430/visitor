import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visiter_app/Dashboard/blocs/VehicleListBloc/VehicleListEvent.dart';
import 'package:visiter_app/Dashboard/blocs/VehicleListBloc/VehicleListState.dart';
import 'package:http/http.dart' as http;

import 'package:visiter_app/config/Apiurls.dart';
import 'package:visiter_app/models/vehicle_model.dart';

class VehicleListBloc extends Bloc<VehicleListEvent, VehicleListState> {
  VehicleListBloc() : super(InitialVehicleListState()) {
    on<LoadVehicleListEvent>(loadVehicleListEvent);
  }

  void loadVehicleListEvent(LoadVehicleListEvent event, Emitter emit) async {
    emit(LoadingVehicleListState());

    String? userId = event.userId;
    Map bodyData = {
      'key': Apiurls.KEY,
      'userId': userId,
    };

    dynamic response =
        await http.post(Uri.parse(Apiurls.VEHICLE_LIST), body: bodyData);
    if (response.statusCode == 200) {
      dynamic jsonData = jsonDecode(response.body);
      final vehicleData = jsonData['data'];

      List<VehicleModel> tempList = [];
      vehicleData.forEach((single) {
        VehicleModel vehicleModel = VehicleModel.fromJson(single);
        tempList.add(vehicleModel);
      });

      // data set to state
      emit(SuccessVehicleListState(vehicleList: tempList));
    } else {
      dynamic jsonData = jsonDecode(response.body);
      emit(FailVehicleListState(message: jsonData['message']));
    }
  }
}
