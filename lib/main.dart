import 'package:flutter/material.dart';
import 'package:new_app/SellerApp/seller_welcome_page.dart';
import 'package:new_app/welcom_page.dart';
import "index_page.dart";
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import "package:new_app/welcom_page.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    ); //MaterialApp
  }
}
