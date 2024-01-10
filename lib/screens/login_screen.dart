import 'dart:async';

import 'package:booking_app/constant.dart';
import 'package:booking_app/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const BottomBar()),
            );
          },
          child: Text(
            "Login",
            style: nunitoRegular17
          ),
        ),
      ),
    );
  }
}
