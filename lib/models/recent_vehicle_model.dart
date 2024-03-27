class RecentVehicleModel {
  String? vehicleName;
  String? ownerName;
  String? fuelType;
  String? registrationNumber;
  String? vehicleType;
  String? ownership;
  String? addedBy;
  String? valuationPrice;
  String? createdAt;
  bool? vehicleDetailStatus;

  RecentVehicleModel(
      {this.vehicleName,
      this.ownerName,
      this.fuelType,
      this.registrationNumber,
      this.vehicleType,
      this.ownership,
      this.addedBy,
      this.valuationPrice,
      this.createdAt,
      this.vehicleDetailStatus});

  RecentVehicleModel.fromJson(Map<String, dynamic> json) {
    vehicleName = json['VehicleName'];
    ownerName = json['OwnerName'];
    fuelType = json['FuelType'];
    registrationNumber = json['RegistrationNumber'];
    vehicleType = json['VehicleType'];
    ownership = json['Ownership'];
    addedBy = json['AddedBy'];
    valuationPrice = json['ValuationPrice'];
    createdAt = json['CreatedAt'];
    vehicleDetailStatus = json['VehicleDetailStatus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['VehicleName'] = this.vehicleName;
    data['OwnerName'] = this.ownerName;
    data['FuelType'] = this.fuelType;
    data['RegistrationNumber'] = this.registrationNumber;
    data['VehicleType'] = this.vehicleType;
    data['Ownership'] = this.ownership;
    data['AddedBy'] = this.addedBy;
    data['ValuationPrice'] = this.valuationPrice;
    data['CreatedAt'] = this.createdAt;
    data['VehicleDetailStatus'] = this.vehicleDetailStatus;
    return data;
  }
}
