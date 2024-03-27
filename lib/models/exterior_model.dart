class ExteriorModel {
  String? exteriorID;
  String? vehicleID;
  String? frontBonnetCondition;
  String? bumperFrontCondition;
  String? headLampsCondition;
  String? rhFenderDoorsCondition;
  String? rearBumperCondition;
  String? rearBonnetCondition;
  String? tailLampsCondition;
  String? lhFenderDoorsCondition;
  String? windshieldGlassCondition;
  String? paintCondition;
  String? tyreCount;
  String? tyreLife;
  String? sunroof;
  List<String>? vehicleFrontImage;

  ExteriorModel(
      {this.exteriorID,
      this.vehicleID,
      this.frontBonnetCondition,
      this.bumperFrontCondition,
      this.headLampsCondition,
      this.rhFenderDoorsCondition,
      this.rearBumperCondition,
      this.rearBonnetCondition,
      this.tailLampsCondition,
      this.lhFenderDoorsCondition,
      this.windshieldGlassCondition,
      this.paintCondition,
      this.tyreCount,
      this.tyreLife,
      this.sunroof,
      this.vehicleFrontImage});

  ExteriorModel.fromJson(Map<String, dynamic> json) {
    exteriorID = json['ExteriorID'];
    vehicleID = json['VehicleID'];
    frontBonnetCondition = json['FrontBonnetCondition'];
    bumperFrontCondition = json['BumperFrontCondition'];
    headLampsCondition = json['HeadLampsCondition'];
    rhFenderDoorsCondition = json['RhFenderDoorsCondition'];
    rearBumperCondition = json['RearBumperCondition'];
    rearBonnetCondition = json['RearBonnetCondition'];
    tailLampsCondition = json['TailLampsCondition'];
    lhFenderDoorsCondition = json['LhFenderDoorsCondition'];
    windshieldGlassCondition = json['WindshieldGlassCondition'];
    paintCondition = json['PaintCondition'];
    tyreCount = json['TyreCount'];
    tyreLife = json['TyreLife'];
    sunroof = json['Sunroof'];
    vehicleFrontImage = json['VehicleFrontImage'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ExteriorID'] = this.exteriorID;
    data['VehicleID'] = this.vehicleID;
    data['FrontBonnetCondition'] = this.frontBonnetCondition;
    data['BumperFrontCondition'] = this.bumperFrontCondition;
    data['HeadLampsCondition'] = this.headLampsCondition;
    data['RhFenderDoorsCondition'] = this.rhFenderDoorsCondition;
    data['RearBumperCondition'] = this.rearBumperCondition;
    data['RearBonnetCondition'] = this.rearBonnetCondition;
    data['TailLampsCondition'] = this.tailLampsCondition;
    data['LhFenderDoorsCondition'] = this.lhFenderDoorsCondition;
    data['WindshieldGlassCondition'] = this.windshieldGlassCondition;
    data['PaintCondition'] = this.paintCondition;
    data['TyreCount'] = this.tyreCount;
    data['TyreLife'] = this.tyreLife;
    data['Sunroof'] = this.sunroof;
    data['VehicleFrontImage'] = this.vehicleFrontImage;
    return data;
  }
}
