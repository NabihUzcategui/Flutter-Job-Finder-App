// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:job_finder_app/models/company.dart';

class Job {
  String location;
  String role;
  Company company;
  bool isFavorite = false;
  
  Job({
    required this.location,
    required this.role,
    required this.company,
    required this.isFavorite,
  });

  
}
