// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:job_finder_app/components/components.dart';
import 'package:job_finder_app/models/job.dart';

class JobCarousel extends StatelessWidget {
  

  final List<Job> jobs;

  const JobCarousel({
    Key? key,
    required this.jobs,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: jobs.map((e) => ItemJob(job: e, themeDark: jobs.indexOf(e) == 0)).toList(),
      
      options: CarouselOptions(
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: 0.86,
        height: 230.0,
      )
      
        
    );
  }
}
