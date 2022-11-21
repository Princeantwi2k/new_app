import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:new_app/Screens/seller_cart_page.dart';
import 'package:new_app/Screens/seller_dashboad_page.dart';
import 'package:new_app/Screens/sellers_search_page.dart';
import 'package:new_app/Screens/sellers_user_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _bottomNavindex = 0;

  List<Widget> pages = const [
    SellerDashboad(),
    SearchPage(),
    CartPage(),
    ProfilePage()
  ];

  List<IconData> iconList = [
    Icons.home,
    Icons.search_rounded,
    Icons.shopping_cart,
    Icons.person
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _bottomNavindex,
        children: pages,
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        splashColor: Colors.amber,
        activeColor: Color.fromARGB(255, 34, 125, 153),
        inactiveColor: Color.fromARGB(255, 45, 104, 91),
        icons: iconList,
        activeIndex: _bottomNavindex,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) {
          setState(() {
            _bottomNavindex = index;
          });
        },
      ),
    );
  }
}
