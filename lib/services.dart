import 'dart:async';
import 'package:flutter/material.dart';
import 'package:riverstate/login.dart'; // make sure this has Login widget

class Services {
  void islogin(BuildContext context) {
    Timer(
     const Duration(seconds: 3),
          () {
          print("Timer done, moving to login...");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const logined()));
        });
  }
}