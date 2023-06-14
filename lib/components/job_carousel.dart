import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/components/components.dart';

class JobCarousel extends StatelessWidget {
  const JobCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: const [
        ItemJob(),
        ItemJob(),
        ItemJob(),
      ],
      
      options: CarouselOptions(
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: 0.86,
        height: 230.0,
      )
      
        
    );
  }
}