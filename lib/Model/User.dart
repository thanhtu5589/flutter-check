import 'package:flutter_check/Helper/Helper.dart';

class User {
  String name;

  User.fromJson(Map<String, dynamic> json) {
    this.name = Helper.getDataModel(json, "name");
  }
}