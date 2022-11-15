import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 176, 177, 172),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(33, 22, 33, 43),
        title: const Text("Bagain"),
      ),
      body: Center(
          child: Column(
        children: [],
      )),
    );
  }
}
