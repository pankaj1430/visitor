abstract class UpdateVahanEvent {}

class UpdateVahanButtonClickEvent extends UpdateVahanEvent {
  String? data_id;
  String? userId;
  String? VehicleMake;
  String? FuelNorms;
  String? NCRBStatus;
  String? BlacklistStatus;
  String? NOCDetails;
  String? VehicleType;
  String? PermitNo;
  String? PermitType;
  String? Ownership;
  String? RCStatus;
  String? LoanNumber;
  String? InsurancePolicyNumber;
  String? HPAStatus;
  String? HPABank;
  String? ChassisNumber;
  String? EngineNumber;
  String? InspectionLocation;
  String? ReportInspectedBy;
  String? ReportRequestedBy;
  String? OverallRemarks;
  String? Financier;
  String? Insurer;
  String? VehicleCategory;
  String? VehicleClassDescription;
  String? BodyType;
  String? ManufacturingDate;
  String? RegistrationDate;
  String? InsuranceValidity;
  String? PermitIssueDate;
  String? PermitValidFromDate;
  String? PermitValiduptoDate;
  String? RCStatusAsOn;
  String? RCTaxValidity;
  String? RCFitnessValiditiy;
  String? VehicleSummary;
  String? DateOfInspection;

  UpdateVahanButtonClickEvent(
      {this.data_id,
      this.userId,
      this.VehicleMake,
      this.FuelNorms,
      this.NCRBStatus,
      this.BlacklistStatus,
      this.NOCDetails,
      this.VehicleType,
      this.PermitNo,
      this.PermitType,
      this.BodyType,
      this.ChassisNumber,
      this.DateOfInspection,
      this.EngineNumber,
      this.Financier,
      this.HPABank,
      this.HPAStatus,
      this.InspectionLocation,
      this.InsurancePolicyNumber,
      this.InsuranceValidity,
      this.Insurer,
      this.LoanNumber,
      this.ManufacturingDate,
      this.OverallRemarks,
      this.Ownership,
      this.PermitIssueDate,
      this.PermitValidFromDate,
      this.PermitValiduptoDate,
      this.RCFitnessValiditiy,
      this.RCStatus,
      this.RCStatusAsOn,
      this.RCTaxValidity,
      this.RegistrationDate,
      this.ReportInspectedBy,
      this.ReportRequestedBy,
      this.VehicleCategory,
      this.VehicleClassDescription,
      this.VehicleSummary});
}
