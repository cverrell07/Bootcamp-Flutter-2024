import 'package:flutter/material.dart';

class ProfileModel with ChangeNotifier{
  String _name = "Username";

  String get name => _name;

  void updateName(String newName){
    _name = newName;
    notifyListeners();
  }
}