import 'package:flutter/material.dart';
import 'package:new_app/SellerApp/next_register_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 247, 252),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              //Hello again
              Image.asset(
                'assets/piclogo.png',
                width: 200,
                height: 150,
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 200.0),
                child: Text("Create Account",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 200.0),
                child: Text("Sign up to get started",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 17)),
              ),
              const SizedBox(
                height: 25,
              ),
              //email testfild
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 8, bottom: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter first name",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 8, bottom: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter your last name",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //password testfild
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 8, bottom: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email address",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //password testfild
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 8, bottom: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Business name",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //password testfild
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 8, bottom: 8),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Select business type",
                      ),
                    ),
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
                        builder: (BuildContext context) =>
                            const NextRegisterPage()));
                  },
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 148, 203, 219),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                          child: Text(
                        "Confirm",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ))),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              //not a member? register now

              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Row(
                  children: [
                    const Text("Already have an account? ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    GestureDetector(
                      child: const Text("Sign!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red)),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
