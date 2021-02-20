import 'package:flutter/material.dart';
import 'package:project_mamen/model/trip.dart';
import 'package:project_mamen/theme.dart';

class TripCard extends StatelessWidget {
  final Trip trip;
  TripCard(this.trip);

  @override
  Widget build(BuildContext context) {
    return trip.isSelected
        ? ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width - (2 * 24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffE25555), Color(0xffFA3A08)]
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          trip.name,
                          style: white2TextStyle.copyWith(fontSize: 16),
                        ),
                        SizedBox(height: 8),
                        Text(
                          trip.sub,
                          style: white2TextStyle.copyWith(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Container(
                          width: 25,
                          height: 25,
                          child: Image.asset("assets/images/Checklist2.png")),
                    )
                ],
              ),
            ),
          )
        : ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width - (2 * 24),
              color: Color(0xff353340),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          trip.name,
                          style: white2TextStyle.copyWith(fontSize: 16),
                        ),
                        SizedBox(height: 8),
                        Text(
                          trip.sub,
                          style: greyTextStyle.copyWith(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                
                ],
              ),
            ),
          );
  }
}
