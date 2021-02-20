import 'package:flutter/material.dart';
import 'package:project_mamen/pages/trip_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TripPage(),
      
    );
  }
}