import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddNextPage extends StatefulWidget {
  const AddNextPage({super.key});

  @override
  State<AddNextPage> createState() => _AddNextPageState();
}

class _AddNextPageState extends State<AddNextPage> {
  _AddNextPageState() {
    _selectedVal = _countryList[0];
  }

  TextEditingController textarea = TextEditingController();

  final _countryList = ["Condition", "Ghana", "Kanya"];
  String? _selectedVal = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Container(
          margin:
              const EdgeInsets.only(right: 10, left: 10, top: 20, bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: Column(children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              margin: const EdgeInsets.only(right: 20, left: 20, top: 15),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 214, 214, 214)),
                  borderRadius: BorderRadius.circular(12)),
              child: DropdownButtonFormField(
                value: _selectedVal,
                items: _countryList
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedVal = val as String;
                  });
                },
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Color.fromARGB(255, 36, 35, 35),
                ),
                dropdownColor: Colors.grey[700],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 214, 214, 214)),
                    borderRadius: BorderRadius.circular(12)),
                child: const TextField(
                    decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Reserve price",
                ))),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(right: 200),
              child: const Text(
                "item information",
                style: TextStyle(fontSize: 20, color: Color(0xff3f6b65)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                margin: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 214, 214, 214)),
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                    controller: textarea,
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Describe item",
                    ))),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(9),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(26, 22, 171, 182)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 80),
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Item image",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text("jpeg png")
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(
                            top: 12, left: 20, right: 20, bottom: 12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 194, 190, 190)),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text("Select image"))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(9),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(26, 22, 171, 182)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 80),
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Item video",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text("10 seconds mp4")
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(
                            top: 12, left: 20, right: 20, bottom: 12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 194, 190, 190)),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text("Select video"))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: GestureDetector(
                // onTap: () {
                //   Navigator.of(context).push(MaterialPageRoute(
                //       builder: (BuildContext context) => const AddNextPage()));
                // },
                child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 148, 203, 219),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                        child: Text(
                      "Complete",
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
