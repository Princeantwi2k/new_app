import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class SellerDashboad extends StatelessWidget {
  const SellerDashboad({super.key});

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
                        padding: const EdgeInsets.only(right: 100),
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
                    'assets/Group 402.png',
                    width: 20,
                    height: 20,
                  ),
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

            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250.0, bottom: 10),
              child: Text(
                "Services",
                style: GoogleFonts.bebasNeue(fontSize: 19),
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 30, right: 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 10, left: 15, right: 15),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 27, 82, 99),
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            "assets/basket.png",
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
                              top: 20, bottom: 10, left: 15, right: 15),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 27, 82, 99),
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            "assets/wifi.png",
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
                              top: 20, bottom: 10, left: 15, right: 15),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 27, 82, 99),
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            "assets/wallet.png",
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
