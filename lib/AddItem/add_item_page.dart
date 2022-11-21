import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/AddItem/add_next_page.dart';

class AddItem extends StatefulWidget {
  const AddItem({super.key});

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(
            'assets/left-arrow-1.png',
            width: 20,
            height: 20,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 10, right: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(right: 10, left: 70),
                child: const Text("Add Item",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.black)),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.only(
                    right: 30, top: 10, bottom: 10, left: 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Image.asset(
                  'assets/Group 402.png',
                  width: 20,
                  height: 20,
                ),
              ),
            ],
          )
        ],
      ),
      body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const SizedBox(
          height: 30,
        ),
        Container(
          margin: const EdgeInsets.only(right: 200),
          child: const Text(
            "item information",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff3f6b65)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            margin: const EdgeInsets.only(right: 20, left: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(8)),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Item name",
              ),
            )),
        const SizedBox(
          height: 30,
        ),
        Container(
          margin: const EdgeInsets.only(right: 200),
          child: const Text(
            "Select item Category",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 103, 116, 116)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          color: Colors.white,
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, left: 45, right: 45),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const AddItem()));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 10, left: 15, right: 15),
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 95, 167, 163),
                                  Color(0xff3f6b65),
                                  Color(0xff3f6b65),
                                ],
                                stops: [
                                  0.2,
                                  0.9,
                                  0.2
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.centerRight),
                            borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(
                          "assets/mercedes.png",
                          height: 40,
                          width: 50,
                        ),
                      ),
                    ),
                    const Text("Cars"),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const AddItem()));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 10, left: 15, right: 15),
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 95, 167, 163),
                                  Color(0xff3f6b65),
                                  Color(0xff3f6b65),
                                ],
                                stops: [
                                  0.2,
                                  0.9,
                                  0.2
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.centerRight),
                            borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(
                          "assets/House.png",
                          height: 40,
                          width: 50,
                        ),
                      ),
                    ),
                    const Text("Real estate"),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const AddItem()));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 10, left: 15, right: 15),
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 95, 167, 163),
                                  Color(0xff3f6b65),
                                  Color(0xff3f6b65),
                                ],
                                stops: [
                                  0.2,
                                  0.9,
                                  0.2
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.centerRight),
                            borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(
                          "assets/phone.png",
                          height: 40,
                          width: 50,
                        ),
                      ),
                    ),
                    const Text("Electronics"),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const AddItem()));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 10, left: 15, right: 15),
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 95, 167, 163),
                                  Color(0xff3f6b65),
                                  Color(0xff3f6b65),
                                ],
                                stops: [
                                  0.2,
                                  0.9,
                                  0.2
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.centerRight),
                            borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(
                          "assets/basket.png",
                          height: 40,
                          width: 50,
                        ),
                      ),
                    ),
                    const Text("Others"),
                  ],
                ),
                Container(
                  margin:
                      const EdgeInsets.only(bottom: 100, left: 10, right: 10),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const AddItem()));
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 10, left: 15, right: 15),
                          margin: const EdgeInsets.only(
                              bottom: 10, left: 10, right: 10),
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 95, 167, 163),
                                    Color(0xff3f6b65),
                                    Color(0xff3f6b65),
                                  ],
                                  stops: [
                                    0.2,
                                    0.9,
                                    0.2
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.centerRight),
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            "assets/dog.png",
                            height: 40,
                            width: 50,
                          ),
                        ),
                      ),
                      const Text("Animal"),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        //sign in button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const AddNextPage()));
            },
            child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 148, 203, 219),
                    borderRadius: BorderRadius.circular(12)),
                child: const Center(
                    child: Text(
                  "Continue",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ))),
          ),
        ),
      ])),
    );
  }
}
