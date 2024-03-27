import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visiter_app/Dashboard/blocs/VahanBloc/UpdateVahanEvent.dart';
import 'package:visiter_app/Dashboard/blocs/VahanBloc/UpdateVahanState.dart';
import 'package:visiter_app/config/Apiurls.dart';
import 'package:http/http.dart' as http;

class UpdateVahanBloc extends Bloc<UpdateVahanEvent, UpdateVahanState> {
  UpdateVahanBloc() : super(InitialUpdateVahanState()) {
    on<UpdateVahanButtonClickEvent>(updateButtonClickEvent);
  }

  void updateButtonClickEvent(
      UpdateVahanButtonClickEvent event, Emitter emit) async {
    emit(LoadingUpdateVahanState());

    String? data_id = event.data_id;
    String? userId = event.userId;
    String? VehicleMake = event.VehicleMake;
    String? FuelNorms = event.FuelNorms;
    String? NCRBStatus = event.NCRBStatus;
    String? BlacklistStatus = event.BlacklistStatus;
    String? NOCDetails = event.NOCDetails;
    String? VehicleType = event.VehicleType;
    String? PermitNo = event.PermitNo;
    String? PermitType = event.PermitType;
    String? Ownership = event.Ownership;
    String? RCStatus = event.RCStatus;
    String? LoanNumber = event.LoanNumber;
    String? InsurancePolicyNumber = event.InsurancePolicyNumber;
    String? HPAStatus = event.HPAStatus;
    String? HPABank = event.HPABank;
    String? ChassisNumber = event.ChassisNumber;
    String? EngineNumber = event.EngineNumber;
    String? InspectionLocation = event.InspectionLocation;
    String? ReportInspectedBy = event.ReportInspectedBy;
    String? ReportRequestedBy = event.ReportRequestedBy;
    String? OverallRemarks = event.OverallRemarks;
    String? Financier = event.Financier;
    String? Insurer = event.Insurer;
    String? VehicleCategory = event.VehicleCategory;
    String? VehicleClassDescription = event.VehicleClassDescription;
    String? BodyType = event.BodyType;
    String? ManufacturingDate = event.ManufacturingDate;
    String? RegistrationDate = event.RegistrationDate;
    String? InsuranceValidity = event.InsuranceValidity;
    String? PermitIssueDate = event.PermitIssueDate;
    String? PermitValidFromDate = event.PermitValidFromDate;
    String? PermitValiduptoDate = event.PermitValiduptoDate;
    String? RCStatusAsOn = event.RCStatusAsOn;
    String? RCTaxValidity = event.RCTaxValidity;
    String? RCFitnessValiditiy = event.RCFitnessValiditiy;
    String? VehicleSummary = event.VehicleSummary;
    String? DateOfInspection = event.DateOfInspection;

    // HttpClient client = new HttpClient();
    Map data = {
      'key': Apiurls.KEY,
      "data_id": data_id,
      "userId": userId,
      "VehicleMake": VehicleMake,
      "FuelNorms": FuelNorms,
      "NCRBStatus": NCRBStatus,
      "BlacklistStatus": BlacklistStatus,
      "NOCDetails": NOCDetails,
      "VehicleType": VehicleType,
      "PermitNo": PermitNo,
      "PermitType": PermitType,
      "Ownership": Ownership,
      "RCStatus": RCStatus,
      "LoanNumber": LoanNumber,
      "InsurancePolicyNumber": InsurancePolicyNumber,
      "HPAStatus": HPAStatus,
      "HPABank": HPABank,
      "ChassisNumber": ChassisNumber,
      "EngineNumber": EngineNumber,
      "InspectionLocation": InspectionLocation,
      "ReportInspectedBy": ReportInspectedBy,
      "ReportRequestedBy": ReportRequestedBy,
      "OverallRemarks": OverallRemarks,
      "Financier": Financier,
      "Insurer": Insurer,
      "VehicleCategory": VehicleCategory,
      "VehicleClassDescription": VehicleClassDescription,
      "BodyType": BodyType,
      "ManufacturingDate": ManufacturingDate,
      "RegistrationDate": RegistrationDate,
      "InsuranceValidity": InsuranceValidity,
      "PermitIssueDate": PermitIssueDate,
      "PermitValidFromDate": PermitValidFromDate,
      "PermitValiduptoDate": PermitValiduptoDate,
      "RCStatusAsOn": RCStatusAsOn,
      "RCTaxValidity": RCTaxValidity,
      "RCFitnessValiditiy": RCFitnessValiditiy,
      "VehicleSummary": VehicleSummary,
      "DateOfInspection": DateOfInspection
    };

    dynamic response =
        await http.post(Uri.parse(Apiurls.UPDATE_VAHAN_DETAIL), body: data);

    if (response.statusCode == 200) {
      dynamic jsonResponse = jsonDecode(response.body);
      dynamic message = jsonResponse['message'];

      emit(SuccessUpdateVahanState(message: message));
    } else {
      dynamic jsonResponse = jsonDecode(response.body);
      dynamic message = jsonResponse['message'];
      emit(FailUpdateVahanState(message: message));
    }
  }
}
