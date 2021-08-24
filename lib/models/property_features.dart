part of moralar_widgets;

@JsonSerializable()
class PropertyFeatures {
  double? propertyValue;
  int? typeProperty;
  double? squareFootage;
  double? condominiumValue;
  double? iptuValue;
  String? neighborhood;
  int? numberFloors;
  int? floorLocation;
  bool? hasElevator;
  int? numberOfBedrooms;
  int? numberOfBathrooms;
  bool? hasServiceArea;
  bool? hasGarage;
  bool? hasYard;
  bool? hasCistern;
  bool? hasWall;
  bool? hasAccessLadder;
  bool? hasAccessRamp;
  bool? hasAdaptedToPcd;
  int? propertyRegularization;
  int? typeGasInstallation;
  bool? isInterested;

  PropertyFeatures({
    this.propertyValue,
    this.typeProperty,
    this.squareFootage,
    this.condominiumValue,
    this.iptuValue,
    this.neighborhood,
    this.numberFloors,
    this.floorLocation,
    this.hasElevator,
    this.numberOfBedrooms,
    this.numberOfBathrooms,
    this.hasServiceArea,
    this.hasGarage,
    this.hasYard,
    this.hasCistern,
    this.hasWall,
    this.hasAccessLadder,
    this.hasAccessRamp,
    this.hasAdaptedToPcd,
    this.propertyRegularization,
    this.typeGasInstallation,
    this.isInterested,
  });

  factory PropertyFeatures.fromJson(Map<String, dynamic> json) {
    return _$PropertyFeaturesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PropertyFeaturesToJson(this);
}
