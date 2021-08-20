part of moralar_widgets;

@JsonSerializable()
class Address {
  String? streetAddress;
  String? number;
  String? cityName;
  String? cityId;
  String? stateName;
  String? stateUf;
  String? stateId;
  String? neighborhood;
  String? complement;
  String? location;
  String? cep;

  Address({
    this.streetAddress,
    this.number,
    this.cityName,
    this.cityId,
    this.stateName,
    this.stateUf,
    this.stateId,
    this.neighborhood,
    this.complement,
    this.location,
    this.cep,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return _$AddressFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
