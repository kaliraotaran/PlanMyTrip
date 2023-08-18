import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:plan_my_trip/welcomepage.dart';

// import 'homepage.dart';

final Color btcolor = Color.fromRGBO(186, 255, 102, 1.00);

class MainBody extends StatelessWidget {
  const MainBody({
    super.key,
    required this.name,
    required this.img,
    required this.hotelimg,
    required this.hotelname,
    required this.hotelprice,
  });
  final String name;
  final String img;
  final String hotelimg;
  final String hotelname;
  final String hotelprice;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(img))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              height: 80,
              child: Frosted(
                  child: Row(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: btcolor),
                    child: Center(
                      child: IconButton(
                        icon: const Icon(FeatherIcons.x),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                ],
              )),
            ),
          ),
          BottomWidget(
            hotelimg: hotelimg,
            hotelname: hotelname,
            hotelprice: hotelprice,
          )
        ],
      ),
    );
  }
}

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key,
    required this.hotelname,
    required this.hotelimg,
    required this.hotelprice,
  });
  final String hotelname;
  final String hotelimg;
  final String hotelprice;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 250,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60), topRight: Radius.circular(60))),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 8),
              child: Container(
                height: 3,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.grey.shade300),
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'List of Residence',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: 140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(hotelimg),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.grey.withOpacity(0.1),
                              Colors.black.withOpacity(0.8),
                            ],
                            stops: const [
                              0.0,
                              4.0
                            ]),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // SizedBox(
                              //   width: 10,
                              // ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  hotelname,
                                  maxLines: 2,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Icon(
                                  FeatherIcons.heart,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 3),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                width: 45,
                                height: 15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: btcolor,
                                ),
                                child: const Center(
                                  child: Text(
                                    'Hotel',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Icon(
                                FeatherIcons.star,
                                color: Colors.white,
                                size: 15,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                '4.2 rating',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300),
                              ),
                              const SizedBox(
                                width: 140,
                              ),
                              Text(
                                hotelprice,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                              const Text(
                                ' /night',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w200),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
