import 'package:model_user/models/address.dart';

class User {
  String? name;
  String? email;
  Address? address;

  User({this.name, this.email, this.address});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    address =
        json['address'] != null ? Address.fromJson(json['address']) : null;
  }
}
