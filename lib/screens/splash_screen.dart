import 'dart:async';
import 'package:booking_app/screens/home_screen.dart';
import 'package:booking_app/screens/login_screen.dart';
import 'package:booking_app/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkAuthentication();
   
  }

  Future<void> checkAuthentication() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? authToken = prefs.getString('authToken');
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) => (authToken != null && authToken.isNotEmpty)
                ? const HomeScreen()
                : const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
            'assets/icons/splash_animation.json'), 
      ),
    );
  }
}
