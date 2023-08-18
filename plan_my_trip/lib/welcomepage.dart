import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:plan_my_trip/homepage.dart';

final Color primarycolor = Colors.white;
final Color btcolor = Color.fromRGBO(186, 255, 102, 1.00);

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  static String routeName = '/welcomepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('assets/splash1.png'))),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Center(
                  child: Text(
                'Vacazan',
                style: TextStyle(
                    fontSize: 40,
                    color: primarycolor,
                    letterSpacing: 5,
                    fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(
              height: 390,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              height: 300,
              child: Frosted(
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Plan Your Trip ',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            color: primarycolor),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'With ease ',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            color: primarycolor),
                      ),
                    ),
                    Text(
                      'From the Vacazan app you can plan your deam trip in a matter of seconds with out any inconvience',
                      maxLines: 2,
                      style: TextStyle(fontSize: 17, color: primarycolor),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, HomePage.routeName);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 30),
                        child: Container(
                          height: 70,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: btcolor),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // SizedBox(
                              //   width: 20,
                              // ),
                              Text(
                                'explore now',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(Icons.arrow_forward)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 00,
            )
          ],
        ),
      ),
    );
  }
}

class Frosted extends StatelessWidget {
  const Frosted({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRect(
          clipBehavior: Clip.hardEdge,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 5.0),
            child: Container(
                height: 80,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey.shade200.withOpacity(0.1)),
                child: child),
          )),
    );
  }
}
