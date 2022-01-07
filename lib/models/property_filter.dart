part of moralar_widgets;

@JsonSerializable()
class PropertyFilter {
  String? typeProperty;
  double? startSquareFootage;
  double? endSquareFootage;
  double? startCondominiumValue;
  double? endCondominiumValue;
  double? startIptuValue;
  double? endIptuValue;
  String? neighborhood;
  int? startNumberOfBedrooms;
  int? endNumberOfBedrooms;
  bool? hasGarage;
  bool? hasAccessLadder;
  bool? hasAccessRamp;
  bool? hasAdaptedToPcd;
  double? lat;
  double? lng;

  PropertyFilter({
    this.typeProperty,
    this.startSquareFootage,
    this.endSquareFootage,
    this.startCondominiumValue,
    this.endCondominiumValue,
    this.startIptuValue,
    this.endIptuValue,
    this.neighborhood,
    this.startNumberOfBedrooms,
    this.endNumberOfBedrooms,
    this.hasGarage,
    this.hasAccessLadder,
    this.hasAccessRamp,
    this.hasAdaptedToPcd,
    this.lat,
    this.lng,
  });

  factory PropertyFilter.fromJson(Map<String, dynamic> json) {
    return _$PropertyFilterFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PropertyFilterToJson(this);
}
