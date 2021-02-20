import 'package:flutter/material.dart';
import 'package:project_mamen/model/hotel.dart';
import 'package:project_mamen/theme.dart';
import 'package:project_mamen/widget/hotel_card.dart';

class HotelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Container(
         child: Stack(
           children: [
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
                                image: AssetImage("assets/images/icon_hotel.png"),
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Text(
                            "Hotels",
                            style: whiteTextStyle.copyWith(fontSize: 24),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                      "Select the hotel you\nwant to stay in",
                      style: whiteTextStyle.copyWith(fontSize: 24),
                    ),
                    SizedBox(
                        height: 24,
                      ),
                      HotelCard(
                       Hotel(
                         id:1,
                         name: "Standout Hotel",
                         price: "500k",
                         locate: "Jakarta, Indonesia",
                         imageUrl: "assets/images/hotel1.png",
                       )
                      ),
                      SizedBox(height:32),
                      HotelCard(
                        Hotel(
                         id:2,
                         name: "Twins Hotel",
                         price: "345k",
                         locate: "BAndung, Indonesia",
                         imageUrl: "assets/images/hotel2.png",
                       )
                      ),
                      SizedBox(height:32),
                      HotelCard(
                       Hotel(
                         id:3,
                         name: "Rumah Abiyyu",
                         price: "975k",
                         locate: "Jakarta, Indonesia",
                         imageUrl: "assets/images/hotel3.png",
                       )
                      ),
                      SizedBox(height:32),
                 ],),
             )
           ],
         ),
       ), 
        ],
      )
    );
  }
}