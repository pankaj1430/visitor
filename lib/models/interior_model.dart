class InteriorModel {
  String? interiorID;
  String? vehicleID;
  String? steering;
  String? dashboard;
  String? interiorTrimsAverage;
  String? seats;
  String? seatsCondition;
  String? seatUpholstery;
  String? accessories;
  String? aBS;
  String? airbags;
  String? eSP;
  String? reverseParkingAssist;
  String? alloyWheels;
  String? cruiseControl;
  String? isCruiseControl;
  List<String>? vehicleFrontImage;

  InteriorModel(
      {this.interiorID,
      this.vehicleID,
      this.steering,
      this.dashboard,
      this.interiorTrimsAverage,
      this.seats,
      this.seatsCondition,
      this.seatUpholstery,
      this.accessories,
      this.aBS,
      this.airbags,
      this.eSP,
      this.reverseParkingAssist,
      this.alloyWheels,
      this.cruiseControl,
      this.isCruiseControl,
      this.vehicleFrontImage});

  InteriorModel.fromJson(Map<String, dynamic> json) {
    interiorID = json['InteriorID'];
    vehicleID = json['VehicleID'];
    steering = json['Steering'];
    dashboard = json['Dashboard'];
    interiorTrimsAverage = json['InteriorTrimsAverage'];
    seats = json['Seats'];
    seatsCondition = json['SeatsCondition'];
    seatUpholstery = json['SeatUpholstery'];
    accessories = json['Accessories'];
    aBS = json['ABS'];
    airbags = json['Airbags'];
    eSP = json['ESP'];
    reverseParkingAssist = json['ReverseParkingAssist'];
    alloyWheels = json['AlloyWheels'];
    cruiseControl = json['CruiseControl'];
    isCruiseControl = json['IsCruiseControl'];
    vehicleFrontImage = json['VehicleFrontImage'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['InteriorID'] = this.interiorID;
    data['VehicleID'] = this.vehicleID;
    data['Steering'] = this.steering;
    data['Dashboard'] = this.dashboard;
    data['InteriorTrimsAverage'] = this.interiorTrimsAverage;
    data['Seats'] = this.seats;
    data['SeatsCondition'] = this.seatsCondition;
    data['SeatUpholstery'] = this.seatUpholstery;
    data['Accessories'] = this.accessories;
    data['ABS'] = this.aBS;
    data['Airbags'] = this.airbags;
    data['ESP'] = this.eSP;
    data['ReverseParkingAssist'] = this.reverseParkingAssist;
    data['AlloyWheels'] = this.alloyWheels;
    data['CruiseControl'] = this.cruiseControl;
    data['IsCruiseControl'] = this.isCruiseControl;
    data['VehicleFrontImage'] = this.vehicleFrontImage;
    return data;
  }
}
