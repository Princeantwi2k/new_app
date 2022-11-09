import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DashboadPage extends StatelessWidget {
  const DashboadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        bottomNavigationBar:
            // ignore: prefer_const_literals_to_create_immutables
            NavigationBar(backgroundColor: Colors.white, destinations: [
          const NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          const NavigationDestination(
              icon: Icon(Icons.person), label: "Person"),
          const NavigationDestination(
              icon: Icon(Icons.search), label: "search"),
          const NavigationDestination(
              icon: Icon(Icons.shopping_cart), label: "cart"),
        ]),
        body: SingleChildScrollView(
          child: SafeArea(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/profile.jpg',
                    ),
                    radius: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 80),
                        child: const Text("Hello",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 15)),
                      ),
                      const Text("Ann Onwuegbuchi",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  margin: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Image.asset(
                    'assets/Search.png',
                    width: 20,
                    height: 20,
                  ),
                ),
                Image.asset(
                  'assets/Group 402.png',
                  width: 20,
                  height: 100,
                ),
              ],
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: 200.0, autoPlay: true, viewportFraction: 0.9),
              items: [
                "assets/banner.png",
                "assets/banner 2.png",
              ].map((e) {
                return Builder(builder: (BuildContext context) {
                  return Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      e,
                    ),
                  );
                });
              }).toList(),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 10, right: 10),
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/payment.png",
                          height: 20,
                          width: 20,
                        ),
                        const Text("Pay In",
                            style: TextStyle(
                              color: Color.fromARGB(255, 12, 86, 109),
                            ))
                      ],
                    )),
                Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/payment.png",
                          height: 20,
                          width: 20,
                        ),
                        const Text("Cash out",
                            style: TextStyle(
                              color: Color.fromARGB(255, 12, 86, 109),
                            ))
                      ],
                    )),
                Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/share.png",
                          height: 20,
                          width: 20,
                        ),
                        const Text("Track orders",
                            style: TextStyle(
                              color: Color.fromARGB(255, 12, 86, 109),
                              fontSize: 10,
                            ))
                      ],
                    )),
                Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/store.png",
                          height: 20,
                          width: 20,
                        ),
                        const Text("Shop",
                            style: TextStyle(
                              color: Color.fromARGB(255, 12, 86, 109),
                            ))
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 250.0),
              child: Text(
                "Item Category",
                style: TextStyle(),
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 30, bottom: 10, left: 20, right: 20),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 27, 82, 99),
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            "assets/mercedes.png",
                            height: 40,
                            width: 50,
                          ),
                        ),
                        const Text("Car"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 30, bottom: 10, left: 20, right: 20),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 27, 82, 99),
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            "assets/phone.png",
                            height: 40,
                            width: 50,
                          ),
                        ),
                        const Text("Electronics"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 30, bottom: 10, left: 20, right: 20),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 27, 82, 99),
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            "assets/dog.png",
                            height: 40,
                            width: 50,
                          ),
                        ),
                        const Text("Animal"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 30, bottom: 10, left: 20, right: 20),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 27, 82, 99),
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            "assets/House.png",
                            height: 40,
                            width: 50,
                          ),
                        ),
                        const Text("Car"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 250.0),
              child: Text(
                "Item Category",
                style: TextStyle(),
              ),
            ),
            // Container(
            //   child: ListView.builder(
            //       itemBuilder: (BuildContext context, int index) {
            //     return ListTile(
            //       title: Text('Item${(index + 1)}'),
            //     );
            //   }),
            // )
          ])),
        ));
  }
}

const int itemCount = 10;
