import 'package:booking_app/dummy.dart';
import 'package:booking_app/widgets/home/home_header.dart';
import 'package:booking_app/widgets/home/nearby_grid.dart';
import 'package:booking_app/widgets/home/popular_list.dart';
import 'package:booking_app/widgets/search/carasousel.dart';
import 'package:booking_app/widgets/search/search_bar.dart';
import 'package:flutter/material.dart';

import '../dummy.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            HomeHeader(),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 5.0), // Adjust the padding as needed
              child: CustumSearchBar(),
            ),
            SizedBox(height: 5.0),
            Carousel(),
            SizedBox(height: 5.0),
            PopularList(items: popular),
            NearbyGrid(data: nearby),
          ],
        ),
      ),
    );
  }
}
