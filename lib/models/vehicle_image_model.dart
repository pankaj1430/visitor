class VehicleImageModel {
  String? frontSide;
  String? backSide;
  String? leftSide;
  String? rightSide;
  String? frontRightSide;
  String? rearRightSide;
  String? rearLeftSide;
  String? chassisImprint;
  String? chassisNumber;
  String? gearAndSheet;
  String? odometer;
  String? selfieWithVehicle;
  String? engineImage;
  String? engineWithRegistrationImage;
  String? rcImage;
  String? rcBackImage;
  String? tyre1;
  String? tyre2;
  String? tyre3;
  String? tyre4;
  String? damage1;
  String? damage2;
  String? damage3;
  String? damage4;

  VehicleImageModel(
      {this.frontSide,
      this.backSide,
      this.leftSide,
      this.rightSide,
      this.frontRightSide,
      this.rearRightSide,
      this.rearLeftSide,
      this.chassisImprint,
      this.chassisNumber,
      this.gearAndSheet,
      this.odometer,
      this.selfieWithVehicle,
      this.engineImage,
      this.engineWithRegistrationImage,
      this.rcImage,
      this.rcBackImage,
      this.tyre1,
      this.tyre2,
      this.tyre3,
      this.tyre4,
      this.damage1,
      this.damage2,
      this.damage3,
      this.damage4});

  VehicleImageModel.fromJson(Map<String, dynamic> json) {
    frontSide = json['FrontSide'];
    backSide = json['BackSide'];
    leftSide = json['LeftSide'];
    rightSide = json['RightSide'];
    frontRightSide = json['FrontRightSide'];
    rearRightSide = json['RearRightSide'];
    rearLeftSide = json['RearLeftSide'];
    chassisImprint = json['ChassisImprint'];
    chassisNumber = json['ChassisNumber'];
    gearAndSheet = json['GearAndSheet'];
    odometer = json['Odometer'];
    selfieWithVehicle = json['SelfieWithVehicle'];
    engineImage = json['EngineImage'];
    engineWithRegistrationImage = json['EngineWithRegistrationImage'];
    rcImage = json['RcImage'];
    rcBackImage = json['RcBackImage'];
    tyre1 = json['Tyre1'];
    tyre2 = json['Tyre2'];
    tyre3 = json['Tyre3'];
    tyre4 = json['Tyre4'];
    damage1 = json['Damage1'];
    damage2 = json['Damage2'];
    damage3 = json['Damage3'];
    damage4 = json['Damage4'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['FrontSide'] = this.frontSide;
    data['BackSide'] = this.backSide;
    data['LeftSide'] = this.leftSide;
    data['RightSide'] = this.rightSide;
    data['FrontRightSide'] = this.frontRightSide;
    data['RearRightSide'] = this.rearRightSide;
    data['RearLeftSide'] = this.rearLeftSide;
    data['ChassisImprint'] = this.chassisImprint;
    data['ChassisNumber'] = this.chassisNumber;
    data['GearAndSheet'] = this.gearAndSheet;
    data['Odometer'] = this.odometer;
    data['SelfieWithVehicle'] = this.selfieWithVehicle;
    data['EngineImage'] = this.engineImage;
    data['EngineWithRegistrationImage'] = this.engineWithRegistrationImage;
    data['RcImage'] = this.rcImage;
    data['RcBackImage'] = this.rcBackImage;
    data['Tyre1'] = this.tyre1;
    data['Tyre2'] = this.tyre2;
    data['Tyre3'] = this.tyre3;
    data['Tyre4'] = this.tyre4;
    data['Damage1'] = this.damage1;
    data['Damage2'] = this.damage2;
    data['Damage3'] = this.damage3;
    data['Damage4'] = this.damage4;
    return data;
  }
}
