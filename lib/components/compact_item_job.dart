// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:job_finder_app/constants/constants.dart';

import 'package:job_finder_app/models/job.dart';

class CompactItemJob extends StatelessWidget {
  final Job job;

  const CompactItemJob({
    Key? key,
    required this.job,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
      child: Container(
        height: 100.0,
        decoration: _boxDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _companyLogo(),
                _infoJobTexts(),
              ],
            ),
            _favIcon(),
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() => BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(2.0, 2.0),
              blurRadius: 8.0,
            )
          ]);

  Widget _companyLogo() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Image.network(job.company.urlLogo),
    );
  }

  Widget _infoJobTexts() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          job.company.name,
          style: kSubTitle1,
        ),
        Text(
          job.role,
          style: kHeadLine4,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_on,
              color: kHighLightColor,
              size: 16.0,
            ),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              job.location,
              style: const TextStyle(fontSize: 14.0, color: kHighLightColor),
            )
          ],
        )
      ],
    );
  }

  Widget _favIcon() {
    return const Padding(
      padding: EdgeInsets.only(top: 20.0, right: 20.0),
      child: Icon(
        Icons.favorite_border,
        color: kHighLightColor,
      ),
    );
  }
}
