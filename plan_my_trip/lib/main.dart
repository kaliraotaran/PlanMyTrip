import 'package:flutter/material.dart';
import 'package:plan_my_trip/routes.dart';
import 'package:plan_my_trip/welcomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: WelcomePage(),
      initialRoute: WelcomePage.routeName,
      routes: routes,
    );
  }
}
