// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:job_finder_app/constants/constants.dart';

import '../components/components.dart';
import '../models/company.dart';
import '../models/job.dart';

class ForYou extends StatelessWidget {
  List<Job> forYouJobs = [
    Job(
        location: 'San Francisco CA',
        role: 'Product Desinger',
        company: Company(
          name: 'Google',
          urlLogo:
              'https://static.vecteezy.com/system/resources/previews/010/353/285/original/colourful-google-logo-on-white-background-free-vector.jpg',
        ),
        isFavorite: false),
    Job(
        location: 'Buenos Aires, ARG',
        role: 'Frontent Developer',
        company: Company(
          name: 'Netflix',
          urlLogo:
              'https://th.bing.com/th/id/OIP.Bk343VigwCdSX9ana4AvjQHaHa?pid=ImgDet&rs=1',
        ),
        isFavorite: false),
    Job(
        location: 'Caracas',
        role: 'Flutter Developer',
        company: Company(
          name: 'Amazon',
          urlLogo:
              'https://pbs.twimg.com/profile_images/807917525325508608/ZEjeSqBs.jpg',
        ),
        isFavorite: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text(
            'For You',
            style: kBodyText1,
          ),
        ),
        JobCarousel(jobs: forYouJobs)
      ],
    );
  }
}
