import 'package:booking_app/constant.dart';
import 'package:booking_app/screens/splash_screen.dart';
import 'package:booking_app/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HotelBooking());
}

class HotelBooking extends StatelessWidget {
  const HotelBooking({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'booking',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'NunitoSans',
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: const SplashScreen(),
    );
  }
}
