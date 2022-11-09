import 'package:flutter/material.dart';
import 'package:new_app/SellerApp/seller_backgroud.dart';
import 'package:new_app/SellerApp/seller_login_page.dart';
import 'package:new_app/Buyer%20App/register_page.dart';

class SellerIndexPage extends StatelessWidget {
  const SellerIndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const SellerBackground(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Hello again
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[50],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Image.asset(
                          'assets/piclogo.png',
                          width: 170,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    const Text("Sellers App",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white)),
                    const SizedBox(
                      height: 100,
                    ),
                    const Text("Live Auction",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.white)),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("Search,buy and buy with the tap of you finger",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.white)),
                    const SizedBox(
                      height: 25,
                    ),
                    //email testfild

                    //sign in button

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const SellersLoginPage()));
                        },
                        child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(12)),
                            child: const Center(
                                child: Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ))),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const RegisterPage()));
                        },
                        child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Center(
                                child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ))),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    //not a member? register now

                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text("Enter on Vistor ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.orange)),
                        ],
                      ),
                    )
                  ]),
            ),
          ))
    ]);
  }
}
