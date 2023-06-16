// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:job_finder_app/components/components.dart';

import 'package:job_finder_app/models/job.dart';

class JobList extends StatelessWidget {
  final List<Job> jobs;

  const JobList({
    Key? key,
    required this.jobs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: jobs.length,
      itemBuilder: (BuildContext context, int index) =>
          CompactItemJob(job: jobs[index]),
    );
  }
}
