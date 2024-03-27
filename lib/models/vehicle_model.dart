class VehicleModel {
  String? vehicleID;
  String? vehicleName;
  String? ownerName;
  String? presentOwner;
  String? vehicleFrontImage;
  String? exteriors;
  String? interiors;
  String? engine;
  String? color;
  String? transmission;
  String? odometer;
  String? fuelType;
  String? registrationNumber;
  String? vehicleType;
  String? ownership;
  String? manufacturingDate;
  String? registrationDate;
  String? insuranceValidity;
  String? rCStatus;
  String? hPAStatus;
  String? hPABank;
  String? chassisNumber;
  String? engineNumber;
  String? inspectionLocation;
  String? dateOfInspection;
  String? location;
  String? documents;
  String? overallRemarks;
  String? reportInspectedBy;
  String? reportRequestedBy;
  String? vehicleSummary;
  String? valuationPrice;
  String? loanNumber;
  String? vehicleDetailStatus;
  String? presentAddress;
  String? permanentAddress;
  String? financier;
  String? insurer;
  String? registeredRTO;
  String? vehicleMake;
  String? vehicleCategory;
  String? vehicleClassDescription;
  String? bodyType;
  String? mobileNo;
  String? rCTaxValidity;
  String? insurancePolicyNumber;
  String? rCFitnessValiditiy;
  String? vehicleModel;
  String? fuelNorms;
  String? engineCubicCapacity;
  String? nCRBStatus;
  String? blacklistStatus;
  String? nOCDetails;
  String? permitNo;
  String? permitIssueDate;
  String? permitValidFromDate;
  String? permitValiduptoDate;
  String? permitType;
  String? rCStatusAsOn;
  String? addedBy;
  String? createdAt;
  String? uploadPdf;

  VehicleModel(
      {this.vehicleID,
      this.vehicleName,
      this.ownerName,
      this.presentOwner,
      this.vehicleFrontImage,
      this.exteriors,
      this.interiors,
      this.engine,
      this.color,
      this.transmission,
      this.odometer,
      this.fuelType,
      this.registrationNumber,
      this.vehicleType,
      this.ownership,
      this.manufacturingDate,
      this.registrationDate,
      this.insuranceValidity,
      this.rCStatus,
      this.hPAStatus,
      this.hPABank,
      this.chassisNumber,
      this.engineNumber,
      this.inspectionLocation,
      this.dateOfInspection,
      this.location,
      this.documents,
      this.overallRemarks,
      this.reportInspectedBy,
      this.reportRequestedBy,
      this.vehicleSummary,
      this.valuationPrice,
      this.loanNumber,
      this.vehicleDetailStatus,
      this.presentAddress,
      this.permanentAddress,
      this.financier,
      this.insurer,
      this.registeredRTO,
      this.vehicleMake,
      this.vehicleCategory,
      this.vehicleClassDescription,
      this.bodyType,
      this.mobileNo,
      this.rCTaxValidity,
      this.insurancePolicyNumber,
      this.rCFitnessValiditiy,
      this.vehicleModel,
      this.fuelNorms,
      this.engineCubicCapacity,
      this.nCRBStatus,
      this.blacklistStatus,
      this.nOCDetails,
      this.permitNo,
      this.permitIssueDate,
      this.permitValidFromDate,
      this.permitValiduptoDate,
      this.permitType,
      this.rCStatusAsOn,
      this.addedBy,
      this.createdAt,
      this.uploadPdf});

  VehicleModel.fromJson(Map<String, dynamic> json) {
    vehicleID = json['VehicleID'];
    vehicleName = json['VehicleName'];
    ownerName = json['OwnerName'];
    presentOwner = json['PresentOwner'];
    vehicleFrontImage = json['VehicleFrontImage'];
    exteriors = json['Exteriors'];
    interiors = json['Interiors'];
    engine = json['Engine'];
    color = json['Color'];
    transmission = json['Transmission'];
    odometer = json['Odometer'];
    fuelType = json['FuelType'];
    registrationNumber = json['RegistrationNumber'];
    vehicleType = json['VehicleType'];
    ownership = json['Ownership'];
    manufacturingDate = json['ManufacturingDate'];
    registrationDate = json['RegistrationDate'];
    insuranceValidity = json['InsuranceValidity'];
    rCStatus = json['RCStatus'];
    hPAStatus = json['HPAStatus'];
    hPABank = json['HPABank'];
    chassisNumber = json['ChassisNumber'];
    engineNumber = json['EngineNumber'];
    inspectionLocation = json['InspectionLocation'];
    dateOfInspection = json['DateOfInspection'];
    location = json['Location'];
    documents = json['Documents'];
    overallRemarks = json['OverallRemarks'];
    reportInspectedBy = json['ReportInspectedBy'];
    reportRequestedBy = json['ReportRequestedBy'];
    vehicleSummary = json['VehicleSummary'];
    valuationPrice = json['ValuationPrice'];
    loanNumber = json['LoanNumber'];
    vehicleDetailStatus = json['VehicleDetailStatus'];
    presentAddress = json['PresentAddress'];
    permanentAddress = json['PermanentAddress'];
    financier = json['Financier'];
    insurer = json['Insurer'];
    registeredRTO = json['RegisteredRTO'];
    vehicleMake = json['VehicleMake'];
    vehicleCategory = json['VehicleCategory'];
    vehicleClassDescription = json['VehicleClassDescription'];
    bodyType = json['BodyType'];
    mobileNo = json['MobileNo'];
    rCTaxValidity = json['RCTaxValidity'];
    insurancePolicyNumber = json['InsurancePolicyNumber'];
    rCFitnessValiditiy = json['RCFitnessValiditiy'];
    vehicleModel = json['VehicleModel'];
    fuelNorms = json['FuelNorms'];
    engineCubicCapacity = json['EngineCubicCapacity'];
    nCRBStatus = json['NCRBStatus'];
    blacklistStatus = json['BlacklistStatus'];
    nOCDetails = json['NOCDetails'];
    permitNo = json['PermitNo'];
    permitIssueDate = json['PermitIssueDate'];
    permitValidFromDate = json['PermitValidFromDate'];
    permitValiduptoDate = json['PermitValiduptoDate'];
    permitType = json['PermitType'];
    rCStatusAsOn = json['RCStatusAsOn'];
    addedBy = json['AddedBy'];
    createdAt = json['CreatedAt'];
    uploadPdf = json['UploadPdf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['VehicleID'] = this.vehicleID;
    data['VehicleName'] = this.vehicleName;
    data['OwnerName'] = this.ownerName;
    data['PresentOwner'] = this.presentOwner;
    data['VehicleFrontImage'] = this.vehicleFrontImage;
    data['Exteriors'] = this.exteriors;
    data['Interiors'] = this.interiors;
    data['Engine'] = this.engine;
    data['Color'] = this.color;
    data['Transmission'] = this.transmission;
    data['Odometer'] = this.odometer;
    data['FuelType'] = this.fuelType;
    data['RegistrationNumber'] = this.registrationNumber;
    data['VehicleType'] = this.vehicleType;
    data['Ownership'] = this.ownership;
    data['ManufacturingDate'] = this.manufacturingDate;
    data['RegistrationDate'] = this.registrationDate;
    data['InsuranceValidity'] = this.insuranceValidity;
    data['RCStatus'] = this.rCStatus;
    data['HPAStatus'] = this.hPAStatus;
    data['HPABank'] = this.hPABank;
    data['ChassisNumber'] = this.chassisNumber;
    data['EngineNumber'] = this.engineNumber;
    data['InspectionLocation'] = this.inspectionLocation;
    data['DateOfInspection'] = this.dateOfInspection;
    data['Location'] = this.location;
    data['Documents'] = this.documents;
    data['OverallRemarks'] = this.overallRemarks;
    data['ReportInspectedBy'] = this.reportInspectedBy;
    data['ReportRequestedBy'] = this.reportRequestedBy;
    data['VehicleSummary'] = this.vehicleSummary;
    data['ValuationPrice'] = this.valuationPrice;
    data['LoanNumber'] = this.loanNumber;
    data['VehicleDetailStatus'] = this.vehicleDetailStatus;
    data['PresentAddress'] = this.presentAddress;
    data['PermanentAddress'] = this.permanentAddress;
    data['Financier'] = this.financier;
    data['Insurer'] = this.insurer;
    data['RegisteredRTO'] = this.registeredRTO;
    data['VehicleMake'] = this.vehicleMake;
    data['VehicleCategory'] = this.vehicleCategory;
    data['VehicleClassDescription'] = this.vehicleClassDescription;
    data['BodyType'] = this.bodyType;
    data['MobileNo'] = this.mobileNo;
    data['RCTaxValidity'] = this.rCTaxValidity;
    data['InsurancePolicyNumber'] = this.insurancePolicyNumber;
    data['RCFitnessValiditiy'] = this.rCFitnessValiditiy;
    data['VehicleModel'] = this.vehicleModel;
    data['FuelNorms'] = this.fuelNorms;
    data['EngineCubicCapacity'] = this.engineCubicCapacity;
    data['NCRBStatus'] = this.nCRBStatus;
    data['BlacklistStatus'] = this.blacklistStatus;
    data['NOCDetails'] = this.nOCDetails;
    data['PermitNo'] = this.permitNo;
    data['PermitIssueDate'] = this.permitIssueDate;
    data['PermitValidFromDate'] = this.permitValidFromDate;
    data['PermitValiduptoDate'] = this.permitValiduptoDate;
    data['PermitType'] = this.permitType;
    data['RCStatusAsOn'] = this.rCStatusAsOn;
    data['AddedBy'] = this.addedBy;
    data['CreatedAt'] = this.createdAt;
    data['UploadPdf'] = this.uploadPdf;
    return data;
  }
}
