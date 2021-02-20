import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_mamen/model/hotel.dart';
import 'package:project_mamen/pages/payment_page.dart';
import 'package:project_mamen/theme.dart';

class HotelCard extends StatelessWidget {
  final Hotel hotel;
  HotelCard(this.hotel);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PaymentPage()));
      },
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Container(
                  width: MediaQuery.of(context).size.width - (2 * 24),
                  height: 200,
                  child: Stack(
                    children: [
                      Image.asset(
                        hotel.imageUrl,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Container(
                              width: 165,
                              height: 42,
                              decoration: BoxDecoration(
                                  color: Colors.black38,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(24))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "I D R ${hotel.price} ",
                                    style:
                                        orangeTextStyle.copyWith(fontSize: 14),
                                  ),
                                  Text("/ N i g h t",
                                      style: white2TextStyle.copyWith(
                                          fontSize: 12))
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hotel.name,
                        style: white2TextStyle.copyWith(fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 8,
                            height: 11,
                            child:
                                Image.asset("assets/images/icon_location.png"),
                          ),
                          SizedBox(width: 8),
                          Text(hotel.locate,
                              style: greyTextStyle.copyWith(fontSize: 12))
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Container(
                        height: 16,
                        width: 84,
                        child: Image.asset("assets/images/star.png")),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
