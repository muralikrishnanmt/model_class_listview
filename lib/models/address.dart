import 'package:model_user/models/geo.dart';

class Address {
  String? street;
  String? city;
  Geo? geo;
  Address({
    this.street,
    this.city,
    this.geo,
  });

  Address.fromJson(Map<String, dynamic> json) {
    street = json['street'];
    city = json['city'];
    geo = json['geo'] != null ? Geo.fromJson(json['geo']) : null;
  }
}
