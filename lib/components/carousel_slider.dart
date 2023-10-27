// lib/components/carousel.dart

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        enlargeCenterPage: true,
      ),
      items: [
        'assets/slider_1.png',
        'assets/slider_2.png',
        'assets/slider_3.png',
      ].map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: const BoxDecoration(
                color: Colors.amber,
              ),
              child: Image.asset(item, fit: BoxFit.cover),
            );
          },
        );
      }).toList(),
    );
  }
}
