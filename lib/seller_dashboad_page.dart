import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class SellerDashboad extends StatefulWidget {
  const SellerDashboad({super.key});

  @override
  State<SellerDashboad> createState() => _SellerDashboadState();
}

class _SellerDashboadState extends State<SellerDashboad> {
  List<String> images = [
    "assets/phone.png",
    "assets/House.png",
    "assets/mercedes.png",
  ];
  List<String> prductTitle = [
    "Galaxy Book2 pro 360",
    "Orain BT headset",
    "Samsung HD Plasma 50"
  ];
  List<String> productDetails = [
    "10:20am 30th Jun 22",
    "10:20am 30th Jun 22",
    "10:20am 30th Jun 22"
  ];
  List<String> productStatus = ["90,000", "15,000", "137,000"];

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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
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
                    top: 10, bottom: 10, left: 45, right: 45),
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
                          const Text("Add iterm"),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
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
                              "assets/wifi.png",
                              height: 40,
                              width: 50,
                            ),
                          ),
                          const Text("Setup auction"),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
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
                              "assets/wallet.png",
                              height: 40,
                              width: 50,
                            ),
                          ),
                          const Text("Transfer funds"),
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
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: prductTitle.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    decoration: const BoxDecoration(color: Colors.white),
                    child: ListTile(
                      leading: CircleAvatar(
                          child: CircleAvatar(
                              backgroundImage: AssetImage(images[index]),
                              radius: 20)),
                      title: Text(prductTitle[index]),
                      subtitle: Text(productDetails[index]),
                      trailing: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Text(productStatus[index]),
                          ),
                          Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 17, 241, 47),
                                borderRadius: BorderRadius.circular(16)),
                            child: const Text(
                              "LIVE",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ]))));
  }
}
