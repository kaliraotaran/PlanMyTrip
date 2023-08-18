import 'package:flutter/material.dart';
// import 'package:plan_my_trip/welcomepage.dart';
// import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../constants.dart';

class germany extends StatelessWidget {
  const germany({super.key});
  static String routeName = '/germany';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainBody(
        name: 'The Castle        ',
        img: 'assets/castlegermany.png',
        hotelname: 'Hotel Leonardo Royal',
        hotelprice: '\$300',
        hotelimg: 'assets/germany.png',
      ),
    );
  }
}
