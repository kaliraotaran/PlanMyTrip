// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:plan_my_trip/detail_pages/detail_page.dart';
import 'package:plan_my_trip/detail_pages/germany.dart';
import 'package:plan_my_trip/detail_pages/iceland.dart';
import 'package:plan_my_trip/homepage.dart';
import 'package:plan_my_trip/welcomepage.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomePage.routeName: (context) => WelcomePage(),
  HomePage.routeName: (context) => HomePage(),
  DetailPage.routeName: (context) => DetailPage(),
  germany.routeName: (context) => germany(),
  iceland.routeName: (context) => iceland()
};
