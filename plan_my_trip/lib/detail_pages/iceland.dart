import 'package:flutter/material.dart';
import 'package:plan_my_trip/constants.dart';

class iceland extends StatelessWidget {
  const iceland({super.key});

  static String routeName = '/iceland';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainBody(
          name: 'The Ice Hills   ',
          img: 'assets/iceland2.png',
          hotelimg: 'assets/hoteliceland.png',
          hotelname: 'Hótel Höfn',
          hotelprice: '\$750'),
    );
  }
}
