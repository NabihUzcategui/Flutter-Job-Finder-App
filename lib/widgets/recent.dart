import 'package:flutter/material.dart';
import 'package:job_finder_app/components/jobs_list.dart';
import 'package:job_finder_app/constants/constants.dart';
import 'package:job_finder_app/models/job.dart';

import '../models/company.dart';

class Recent extends StatelessWidget {
  List<Job> recentJobs = [
    Job(
      role: 'UX Enginner',
      location: 'Mountain View, CA',
      company: Company(
        name: 'Apple',
        urlLogo:
            'https://i.pinimg.com/originals/1c/aa/03/1caa032c47f63d50902b9d34492e1303.jpg',
      ),
      isFavorite: false,
    ),
    Job(
        role: 'Motion Designer',
        location: 'New York, NY',
        company: Company(
          name: 'AirBnb',
          urlLogo:
              'https://menorcaaldia.com/wp-content/uploads/2018/02/air.jpg',
        ),
        isFavorite: false),
    Job(
      role: 'Python Developer',
      location: 'New York',
      company: Company(
        name: 'Amazon',
        urlLogo:
            'https://static.vecteezy.com/system/resources/previews/014/018/561/original/amazon-logo-on-transparent-background-free-vector.jpg',
      ),
      isFavorite: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding:
              EdgeInsets.only(top: 5.0, bottom: 15.0, left: 30.0, right: 30.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent',
                style: kBodyText1,
              ),
              Text(
                'See all',
                style: kBodyText2,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: JobList(jobs: recentJobs),
        )
      ],
    );
  }
}
