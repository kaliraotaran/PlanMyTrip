import 'package:flutter/material.dart';
// import 'package:plan_my_trip/welcomepage.dart';
// import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../constants.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});
  static String routeName = '/detailpage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainBody(
        name: 'Manarola Coast',
        img: 'assets/manar2.png',
        hotelimg: 'assets/IThotel.png',
        hotelname: 'Hotel Roma Tor Vargeta',
        hotelprice: '\$94',
      ),
    );
  }
}
