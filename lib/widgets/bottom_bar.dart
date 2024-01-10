import 'package:booking_app/constant.dart';
import 'package:booking_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  final List<String> _iconNames = ['home-active', 'heart-big', 'bell', 'user'];
  final List _page = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _page[_selectedIndex],
          Positioned(
              bottom: 17,
              left: 41,
              right: 41,
              child: Container(
                height: 52,
                width: 291,
                decoration: BoxDecoration(
                  color: kBottomBarColor,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                    4,
                    (index) => IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      enableFeedback: false,
                      onPressed: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      icon: SvgPicture.asset(
                          'assets/icons/${_iconNames[index]}.svg',
                          semanticsLabel: _iconNames[index]),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
