import 'package:flutter/material.dart';
import 'package:flutter_project/screens/DetailsScreen.dart';
import 'package:flutter_project/screens/HomeScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electrical Store',
      routes: {
        HomeScreen.PageRoute: (context) => const HomeScreen(),
        DetailsScreen.PageRoute: (context) => const DetailsScreen(),
      },
    );
  }
}
