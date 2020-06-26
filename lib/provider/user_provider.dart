import 'package:flutter/widgets.dart';
import 'package:fluttertttt/model/user.dart';
import 'package:fluttertttt/resources/auth_methods.dart';


class UserProvider with ChangeNotifier {
  User _user;
  User get getUser => _user;
  final  AuthMethods _authMethods = AuthMethods();

  void refreshUser() async {
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }

}