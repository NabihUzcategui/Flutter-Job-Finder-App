import 'package:flutter/material.dart';
import 'package:job_finder_app/constants/constants.dart';

import '../components/components.dart';

class ForYou extends StatelessWidget {
  const ForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text('For You', style: kBodyText,),
        ),
        JobCarousel()
      ],
    );
  }
}