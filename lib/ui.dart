import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:riverstate/services.dart';

import 'login.dart';

class kaka extends StatefulWidget {
  const kaka({super.key});

  @override
  State<kaka> createState() => _kakaState();
}

class _kakaState extends State<kaka> {
  final Services plugin = Services();

  @override
  void initState() {
    super.initState();
    super.initState();WidgetsBinding.instance.addPostFrameCallback((_) {
      plugin.islogin(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset("assets/splash.jpeg",
          fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          )

        )
    );
  }
}
