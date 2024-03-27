class SystemFunctionModel {
  String? systemFunDocId;
  String? vehicleID;
  String? testRide;
  String? engineCondition;
  String? acBlower;
  String? cooling;
  String? seatsCondition;
  String? heater;
  String? chassisAndVehicleFrame;
  String? brakes;
  String? suspension;
  String? lpgCngAvailable;
  String? lpgCngEndorsedInRc;
  String? ignitionFuelSystem;
  String? headLampTailLamp;
  String? powerWindows;
  String? musicSystem;
  String? starterMotor;
  String? alternator;
  String? battery;
  String? vehicleCondition;
  String? parkingLocation;
  String? insuranceType;
  String? uploadPdf;
  String? createdAt;
  List<String>? vehicleFrontImage;

  SystemFunctionModel(
      {this.systemFunDocId,
      this.vehicleID,
      this.testRide,
      this.engineCondition,
      this.acBlower,
      this.cooling,
      this.seatsCondition,
      this.heater,
      this.chassisAndVehicleFrame,
      this.brakes,
      this.suspension,
      this.lpgCngAvailable,
      this.lpgCngEndorsedInRc,
      this.ignitionFuelSystem,
      this.headLampTailLamp,
      this.powerWindows,
      this.musicSystem,
      this.starterMotor,
      this.alternator,
      this.battery,
      this.vehicleCondition,
      this.parkingLocation,
      this.insuranceType,
      this.uploadPdf,
      this.createdAt,
      this.vehicleFrontImage});

  SystemFunctionModel.fromJson(Map<String, dynamic> json) {
    systemFunDocId = json['SystemFunDocId'];
    vehicleID = json['VehicleID'];
    testRide = json['TestRide'];
    engineCondition = json['EngineCondition'];
    acBlower = json['AcBlower'];
    cooling = json['Cooling'];
    seatsCondition = json['SeatsCondition'];
    heater = json['Heater'];
    chassisAndVehicleFrame = json['ChassisAndVehicleFrame'];
    brakes = json['Brakes'];
    suspension = json['Suspension'];
    lpgCngAvailable = json['LpgCngAvailable'];
    lpgCngEndorsedInRc = json['LpgCngEndorsedInRc'];
    ignitionFuelSystem = json['IgnitionFuelSystem'];
    headLampTailLamp = json['HeadLampTailLamp'];
    powerWindows = json['PowerWindows'];
    musicSystem = json['MusicSystem'];
    starterMotor = json['StarterMotor'];
    alternator = json['Alternator'];
    battery = json['Battery'];
    vehicleCondition = json['VehicleCondition'];
    parkingLocation = json['ParkingLocation'];
    insuranceType = json['InsuranceType'];
    uploadPdf = json['UploadPdf'];
    createdAt = json['created_at'];
    vehicleFrontImage = json['VehicleFrontImage'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['SystemFunDocId'] = this.systemFunDocId;
    data['VehicleID'] = this.vehicleID;
    data['TestRide'] = this.testRide;
    data['EngineCondition'] = this.engineCondition;
    data['AcBlower'] = this.acBlower;
    data['Cooling'] = this.cooling;
    data['SeatsCondition'] = this.seatsCondition;
    data['Heater'] = this.heater;
    data['ChassisAndVehicleFrame'] = this.chassisAndVehicleFrame;
    data['Brakes'] = this.brakes;
    data['Suspension'] = this.suspension;
    data['LpgCngAvailable'] = this.lpgCngAvailable;
    data['LpgCngEndorsedInRc'] = this.lpgCngEndorsedInRc;
    data['IgnitionFuelSystem'] = this.ignitionFuelSystem;
    data['HeadLampTailLamp'] = this.headLampTailLamp;
    data['PowerWindows'] = this.powerWindows;
    data['MusicSystem'] = this.musicSystem;
    data['StarterMotor'] = this.starterMotor;
    data['Alternator'] = this.alternator;
    data['Battery'] = this.battery;
    data['VehicleCondition'] = this.vehicleCondition;
    data['ParkingLocation'] = this.parkingLocation;
    data['InsuranceType'] = this.insuranceType;
    data['UploadPdf'] = this.uploadPdf;
    data['created_at'] = this.createdAt;
    data['VehicleFrontImage'] = this.vehicleFrontImage;
    return data;
  }
}
