import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:new_app/backgroud.dart';

class DashboadPage extends StatelessWidget {
  const DashboadPage({super.key});

  @override
  Widget build(BuildContext context) {
    const int itemCount = 10;
    return Scaffold(
        backgroundColor: Colors.grey[200],
        bottomNavigationBar:
            NavigationBar(backgroundColor: Colors.white, destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.person), label: "Person"),
          NavigationDestination(icon: Icon(Icons.search), label: "search"),
          NavigationDestination(icon: Icon(Icons.shopping_cart), label: "cart"),
        ]),
        body: SingleChildScrollView(
          child: SafeArea(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              children: [
                CircleAvatar(
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
                        child: Text("Hello",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 15)),
                      ),
                      Text("Ann Onwuegbuchi",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Image.asset(
                    'assets/Search.png',
                    width: 20,
                    height: 20,
                  ),
                ),
                Container(
                  child: Image.asset(
                    'assets/Group 402.png',
                    width: 20,
                    height: 100,
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
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(
                        top: 10, bottom: 10, left: 10, right: 10),
                    margin: EdgeInsets.all(10.0),
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
                        Text("Pay In",
                            style: TextStyle(
                              color: Color.fromARGB(255, 12, 86, 109),
                            ))
                      ],
                    )),
                Container(
                    padding: EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    margin: EdgeInsets.all(10.0),
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
                        Text("Cash out",
                            style: TextStyle(
                              color: Color.fromARGB(255, 12, 86, 109),
                            ))
                      ],
                    )),
                Container(
                    padding: EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    margin: EdgeInsets.all(10.0),
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
                        Text("Track orders",
                            style: TextStyle(
                              color: Color.fromARGB(255, 12, 86, 109),
                              fontSize: 10,
                            ))
                      ],
                    )),
                Container(
                    padding: EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    margin: EdgeInsets.all(10.0),
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
                        Text("Shop",
                            style: TextStyle(
                              color: Color.fromARGB(255, 12, 86, 109),
                            ))
                      ],
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250.0),
              child: Text(
                "Item Category",
                style: TextStyle(),
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 30, bottom: 10, left: 20, right: 20),
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 27, 82, 99),
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            "assets/mercedes.png",
                            height: 40,
                            width: 50,
                          ),
                        ),
                        Text("Car"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 30, bottom: 10, left: 20, right: 20),
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 27, 82, 99),
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            "assets/phone.png",
                            height: 40,
                            width: 50,
                          ),
                        ),
                        Text("Electronics"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 30, bottom: 10, left: 20, right: 20),
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 27, 82, 99),
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            "assets/dog.png",
                            height: 40,
                            width: 50,
                          ),
                        ),
                        Text("Animal"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 30, bottom: 10, left: 20, right: 20),
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 27, 82, 99),
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            "assets/House.png",
                            height: 40,
                            width: 50,
                          ),
                        ),
                        Text("Car"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250.0),
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
