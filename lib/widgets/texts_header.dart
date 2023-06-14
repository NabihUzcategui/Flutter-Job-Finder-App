import 'package:flutter/material.dart';
import 'package:job_finder_app/constants/constants.dart';

class TextsHeader extends StatelessWidget {
  const TextsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hi Nabih', style: kBodyText,),
          Text('Find your job', style: kHeadLine1),
          Text('desing job', style: kHeadLine2,),
        ],
      ),
    );
  }
}