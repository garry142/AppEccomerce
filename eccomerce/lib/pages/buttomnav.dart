import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eccomerce/pages/home.dart';
import 'package:eccomerce/pages/order.dart';
import 'package:eccomerce/pages/profil.dart';
import 'package:flutter/material.dart';


class Buttomnav extends StatefulWidget {
  const Buttomnav({super.key});

  @override
  State<Buttomnav> createState() => _ButtomnavState();
}

class _ButtomnavState extends State<Buttomnav> {
  late List<Widget> pages;

  late Home HomePage;
  late Order order;
  late Profil profil;
  int currentTabIndex = 0;

  @override
  void initState() {
    HomePage = Home();
    order = Order();
    profil = Profil();
    super.initState();
    pages = [HomePage, order, profil];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor:Color(0xfff2f2f2),
        color: Colors.black,
        animationDuration: Duration(microseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
          Icon(Icons.shopping_bag_outlined, color: Colors.white),
          Icon(Icons.person_outline, color: Colors.white),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}