import 'package:flutter/material.dart';
import 'package:job_finder_app/constants/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/img/img_main.png'),

            const Column(
              children: [
                Text('Job Hunting', style: kHeadLine1),
                Text('Made Easy', style: kHeadLine2,),
              ],
            ),
            MaterialButton(
              elevation: 10.0,
              minWidth: 170.0,
              height: 50.0,
              color: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Text('Get Started', style: TextStyle(color: Colors.white, fontSize: 20.0),),
              onPressed: (){}
            ),
          ],          
        ),
      ),
    );
  }
}