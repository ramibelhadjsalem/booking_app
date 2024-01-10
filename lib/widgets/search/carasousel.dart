import 'package:booking_app/widgets/search/carasousel_item.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';


import '../../dummy.dart';

class Carousel  extends StatelessWidget {
  const Carousel ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      margin: const EdgeInsets.only(bottom: 25),
      child: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: FadeInUp(
          duration: const Duration(milliseconds: 700),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: chip.length,
            itemBuilder: (context, index) {
              return CarasouselItem(
                label: chip[index],
              );
            },
          ),
        ),
      ),
    );
  }
}

