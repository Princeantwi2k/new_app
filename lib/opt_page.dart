import 'package:flutter/material.dart';
import 'package:new_app/Buyer%20App/dashboad_page.dart';

class OptPage extends StatelessWidget {
  const OptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, left: 15),
                    child: Image.asset(
                      'assets/left-arrow-1.png',
                      width: 20,
                      height: 100,
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 50,
                      bottom: 10.0,
                    ),
                    child: Image.asset(
                      'assets/piclogo.png',
                      width: 220,
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    bottom: 10.0,
                  ),
                  child: Image.asset(
                    'assets/opt.png',
                    width: 90,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 280),
              child: Text(" OTP",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Text(
                  " you need to enter a 4 digit code we sent via Provided email",
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 17)),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                Flexible(
                    child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.all(20.0),
                  child: TextField(
                      decoration: InputDecoration(hintText: "0"),
                      keyboardType: TextInputType.number),
                )),
                Flexible(
                    child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.all(20.0),
                  child: TextField(
                      decoration: InputDecoration(hintText: "0"),
                      keyboardType: TextInputType.number),
                )),
                Flexible(
                    child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.all(20.0),
                  child: TextField(
                      decoration: InputDecoration(hintText: "0"),
                      keyboardType: TextInputType.number),
                )),
                Flexible(
                    child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(hintText: "0"),
                    keyboardType: TextInputType.number,
                  ),
                )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => DashboadPage()));
                },
                child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 148, 203, 219),
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                        child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ))),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
