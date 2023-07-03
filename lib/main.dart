import 'package:flutter/material.dart';
//import 'package:travel_app/pages/landing_page.dart';
import 'package:travel_app/pages/splash_page.dart';


final Color mainYellow = Color(0xFFFFB02F);
final Color primaryGray = Color(0xFF313131);
final Color secondaryGray = Color(0xFF1C1C1C);
final Color lightGray = Color(0xFF3B3B3B);

void main() {
  runApp(
    const MaterialApp(
      home: SplashPage(), // LandingPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
