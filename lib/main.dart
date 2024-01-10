import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:semolina/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';

//test
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Semolina Dictionary',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 800),
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: GoogleFonts.quicksand().fontFamily,
      ),
      home: Dashboard(),
    );
  }
}
