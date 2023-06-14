import 'package:flutter/material.dart';
import 'package:job_finder_app/widgets/for_you.dart';
import '../widgets/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [

            CustomAppBar(),

            TextsHeader(),

            ForYou(),

          ],
        )
      ),
    );
  }
}

