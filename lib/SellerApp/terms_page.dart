import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/SellerApp/seller_dashboad_page.dart';

class TermsAndConditionPage extends StatelessWidget {
  const TermsAndConditionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
                padding: EdgeInsets.only(
                  right: 200,
                ),
                child:
                    Text("Terms &", style: GoogleFonts.bebasNeue(fontSize: 26)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, right: 200),
                child: Text(
                  "Conditions",
                  style: GoogleFonts.bebasNeue(fontSize: 26),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                    "Lorem ipsum dolor sit amet, consectetur  cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: GoogleFonts.roboto(fontSize: 17)),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation  ullamco laboris nisi ut aliquip ex ea .",
                    style: GoogleFonts.roboto(fontSize: 17)),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (bool? value) {}),
                  Text("I accept all Terms & conditions")
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (bool? value) {}),
                  Text("I accept user fee")
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => SellerDashboad()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 148, 203, 219),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                          child: Text(
                        "Complete",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
