import 'package:flutter/material.dart';
import 'package:project_mamen/model/trip.dart';
import 'package:project_mamen/pages/hotel_page.dart';
import 'package:project_mamen/theme.dart';
import 'package:project_mamen/widget/trip_card.dart';

class TripPage extends StatefulWidget {
  @override
  _TripPageState createState() => _TripPageState();
}

class _TripPageState extends State<TripPage> {
  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            a || b || c || d
                ? Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          width: MediaQuery.of(context).size.width - (2 * 24),
                          height: 55,
                          child: RaisedButton(
                            color: buttonColor,
                            onPressed: () {
                              setState(() {
                                a = false;
                                b = false;
                                c = false;
                                d = false;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HotelPage()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Continue to Hotels",
                                  style: whiteTextStyle.copyWith(fontSize: 16),
                                ),
                                Container(
                                  width: 14,
                                  height: 11,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/arrow.png"),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                  )
                : Container(),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/icon_love.png"),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Text(
                        "Trip",
                        style: whiteTextStyle.copyWith(fontSize: 24),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Whom You are Planning\nTo Travel With?",
                    style: whiteTextStyle.copyWith(fontSize: 24),
                  ),
                  SizedBox(height: 24),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        a ? a = false : a = true;
                      });
                    },
                    child: TripCard(Trip(
                        id: 1,
                        name: "Solo Trip",
                        isSelected: a,
                        sub: "Suitable for Make Perfect Memory")),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        b ? b = false : b = true;
                      });
                    },
                    child: TripCard(Trip(
                        id: 2,
                        name: "Couples Trip",
                        isSelected: b,
                        sub: "Suitable for spending time with loved ones")),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        c ? c = false : c = true;
                      });
                    },
                    child: TripCard(Trip(
                        id: 3,
                        name: "Company Trip",
                        isSelected: c,
                        sub: "Suitable for refreshing your office mind")),
                  ),
                  SizedBox(height: 24),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        d ? d = false : d = true;
                      });
                    },
                    child: TripCard(Trip(
                        id: 4,
                        name: "Family Trip",
                        isSelected: d,
                        sub: "Suitable for Make Perfect Memory")),
                  ),
                  SizedBox(height: 24),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
