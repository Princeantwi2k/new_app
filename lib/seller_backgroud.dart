import 'package:flutter/material.dart';

class SellerBackground extends StatelessWidget {
  const SellerBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/seller.png'),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Color.fromARGB(160, 0, 0, 0), BlendMode.darken),
        )),
      ),
    );
  }
}
