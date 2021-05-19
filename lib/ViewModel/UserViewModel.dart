import 'dart:async';

import 'package:flutter_check/Blocs/Bloc.dart';
import 'package:flutter_check/Model/User.dart';

class UserViewModel implements Bloc {
  User _user;
  StreamController _streamController = StreamController<UserViewModel>.broadcast();

  UserViewModel.empty();

  UserViewModel(User data) {
    this._user = data;
  }

  Stream get stream => _streamController.stream;

  String get nameUser => _user?.name ?? "";

  set nameUser(String newValue) {
    _user.name = newValue;
  }

  Future<User> fetchData() async {
    UserViewModel data = await _fetchDataFromApi();
    _streamController.sink.add(data);
  }

  Future<UserViewModel> _fetchDataFromApi() async {
    return Future.delayed(Duration(seconds: 5), () {
      User newUser = User.fromJson({"name": "Doan xem"});
      return UserViewModel(newUser);
    });
  }

  @override
  void dispose() {
    _streamController.close();
  }

}