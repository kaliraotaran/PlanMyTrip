import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plan_my_trip/detail_pages/detail_page.dart';
import 'package:plan_my_trip/detail_pages/germany.dart';
import 'package:plan_my_trip/detail_pages/iceland.dart';
import 'package:plan_my_trip/welcomepage.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
// import 'package:plan_my_trip/welcomepage.dart';

final Color btcolor = Color.fromRGBO(186, 255, 102, 1.00);

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String routeName = '/homepage';

  @override
  State<HomePage> createState() => _HomePageState();
}

enum _SelectedTab { home, favorite, search, person }

class _HomePageState extends State<HomePage> {
  var _selectedtab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedtab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: Appbar(context),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20),
        child: DotNavigationBar(
            margin: EdgeInsets.only(left: 10, right: 10),
            unselectedItemColor: Colors.white,
            backgroundColor: Colors.black,

            // margin: EdgeInsets.o,
            currentIndex: _SelectedTab.values.indexOf(_selectedtab),
            onTap: _handleIndexChanged,
            items: [
              /// Home
              DotNavigationBarItem(
                icon: Icon(Icons.home),
                selectedColor: btcolor,
              ),

              /// Likes
              DotNavigationBarItem(
                icon: Icon(Icons.favorite),
                selectedColor: btcolor,
              ),

              /// Search
              DotNavigationBarItem(
                icon: Icon(Icons.search),
                selectedColor: btcolor,
              ),
            ]),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: theCountries(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Select a Destination',
                  style: GoogleFonts.roboto(
                      fontSize: 25, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            DestinationCrd(
              press: () {
                Navigator.pushNamed(context, DetailPage.routeName);
              },
              image: 'assets/splash.png',
              destination: 'Coast of Manarola',
              location: 'Manarola, Italy',
            ),
            DestinationCrd(
              press: () {
                Navigator.pushNamed(context, iceland.routeName);
              },
              image: 'assets/iceland.png',
              destination: 'The hills',
              location: 'Iceland',
            ),
            DestinationCrd(
              press: () {
                Navigator.pushNamed(context, germany.routeName);
              },
              image: 'assets/castlegermany.png',
              destination: 'Rothenburg',
              location: 'Rothenburg Tauber, Germany',
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }

  Row theCountries() {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        whichcountryRow(
          bg: Colors.black,
          font: btcolor,
          text: 'Austria',
        ),
        const SizedBox(
          width: 20,
        ),
        const whichcountryRow(
          bg: Colors.white,
          font: Colors.black,
          text: 'USA',
        ),
        const SizedBox(
          width: 20,
        ),
        const whichcountryRow(
          bg: Colors.white,
          font: Colors.black,
          text: 'Thailand',
        ),
        const SizedBox(
          width: 20,
        ),
        const whichcountryRow(
          bg: Colors.white,
          font: Colors.black,
          text: 'Canada',
        ),
        const SizedBox(
          width: 20,
        ),
        const whichcountryRow(
          bg: Colors.white,
          font: Colors.black,
          text: 'UK',
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }

  AppBar Appbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey.shade100),
        child: const TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              )),
        ),
      ),
      actions: const [
        Icon(
          Icons.notifications,
          color: Colors.black,
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}

class DestinationCrd extends StatelessWidget {
  const DestinationCrd({
    super.key,
    required this.image,
    required this.destination,
    required this.location,
    required this.press,
  });

  final String image;
  final String destination;
  final String location;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),
      child: GestureDetector(
        onTap: press,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
          height: 320,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(fit: BoxFit.fill, image: AssetImage(image))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.favorite_border,
                      size: 27,
                    ),
                  ),
                ],
              ),
              Container(
                height: 80,
                width: double.infinity,
                child: Frosted(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          destination,
                          // 'Coast of Manarola,',
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w200),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          location,
                          //  'Manarola, Italy',
                          style: GoogleFonts.roboto(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w200),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class whichcountryRow extends StatelessWidget {
  const whichcountryRow({
    super.key,
    required this.bg,
    required this.font,
    required this.text,
  });
  final Color bg;
  final Color font;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 9),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: bg,
          border: Border.all(color: Colors.black)),
      child: Text(
        text,
        style: TextStyle(
          color: font,
        ),
      ),
    );
  }
}
