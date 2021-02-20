import 'package:flutter/material.dart';
import 'package:project_mamen/pages/hotel_page.dart';
import 'package:project_mamen/theme.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
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
                              image:
                                  AssetImage("assets/images/icon_payment.png"),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Text(
                          "Payment",
                          style: whiteTextStyle.copyWith(fontSize: 24),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "Choose the card you\nwant to use",
                      style: whiteTextStyle.copyWith(fontSize: 24),
                    ),
                    SizedBox(height: 24),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return ClipRRect(
                                  child: Container(
                                    height: 370,
                                    padding: EdgeInsets.symmetric(vertical: 50),
                                    color: blueColor,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 24,
                                          ),
                                          child: Text(
                                            "Payment Summary",
                                            style: white2TextStyle.copyWith(
                                                fontSize: 24),
                                          ),
                                        ),
                                        SizedBox(height: 12),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4, horizontal: 24),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Family Trip",
                                                style: greyTextStyle.copyWith(
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                "I D R  2.500.000",
                                                style: white2TextStyle.copyWith(
                                                    fontSize: 14),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4, horizontal: 24),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Hotel",
                                                style: greyTextStyle.copyWith(
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                "I D R  500.000",
                                                style: white2TextStyle.copyWith(
                                                    fontSize: 14),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4, horizontal: 24),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Service Fee",
                                                style: greyTextStyle.copyWith(
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                "I D R  50.000",
                                                style: white2TextStyle.copyWith(
                                                    fontSize: 14),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4, horizontal: 24),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Family Trip",
                                                style: whiteTextStyle.copyWith(
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                "I D R  550.000",
                                                style: orangeTextStyle.copyWith(
                                                    fontSize: 14),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 63),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              height: 55,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  (2 * 24),
                                              child: RaisedButton(
                                                color: button2Color,
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              HotelPage()));
                                                },
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Continue to Payment",
                                                      style: whiteTextStyle
                                                          .copyWith(
                                                              fontSize: 16),
                                                    ),
                                                    Container(
                                                      width: 14,
                                                      height: 11,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              "assets/images/arrow.png"),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Image.asset("assets/images/card_visa.png",
                                width: 300, height: 200, fit: BoxFit.cover),
                            SizedBox(width: 24),
                            Image.asset("assets/images/card_visa2.png",
                                width: 300, height: 200, fit: BoxFit.cover),
                            SizedBox(width: 24),
                            Image.asset("assets/images/card_visa3.png",
                                width: 300, height: 200, fit: BoxFit.cover),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
