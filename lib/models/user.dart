import 'package:model_user/models/address.dart';
import 'package:model_user/models/company.dart';

class User {
  String? name;
  String? email;
  Address? address;
  Company? company;

  User({this.name, this.email, this.address});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    address =
        json['address'] != null ? Address.fromJson(json['address']) : null;
    company =
        json['company'] != null ? Company.fromJson(json['company']) : null;
  }
}
