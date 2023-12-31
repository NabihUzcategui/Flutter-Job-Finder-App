import 'package:flutter/material.dart';
import 'screens/screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Job Finder',
        initialRoute: 'splash',
        routes: {
          'splash': (_) => const SplashScreen(),
          'main': (_) => const MainScreen(),
        });
  }
}
