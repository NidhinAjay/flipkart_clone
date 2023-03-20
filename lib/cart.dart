import 'package:flipkart_clone/categories.dart';
import 'package:flipkart_clone/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

import 'account.dart';
import 'notification.dart';
class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _ctgryState();
}

class _ctgryState extends State<cart> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3374FF),
        title: Text(
          "My Cart",
          style: TextStyle(color: Colors.white),
        ),actions: [Row(children: [Icon(Icons.search),Padding(
        padding: const EdgeInsets.only(right: 20,left: 10),
        child: Icon(Icons.mic),
      )],)],
      ),

      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.white,unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff3374FF),
          items: [
            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => home()));
                  },
                  child: Icon(
                    Icons.home,
                  )),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ctgry()));
                  },
                  child: Icon(Boxicons.bx_grid_alt)),
              label: 'Categories',
              backgroundColor: Color(0xff3374FF),
            ),
            BottomNavigationBarItem(
              icon: InkWell(onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => notif()));
              },child: Icon(Icons.notifications)),
              label: 'Notifications',
              backgroundColor: Color(0xff3374FF),
            ),
            BottomNavigationBarItem(
              icon: InkWell(onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Account()));
              },
                  child: Icon(Icons.account_circle)),
              label: 'Account',
              backgroundColor: Color(0xff3374FF),
            ),
            BottomNavigationBarItem(
              icon: InkWell(onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => cart()));
              },child: Icon(Icons.shopping_cart)),
              label: 'Cart',
              backgroundColor: Color(0xff3374FF),
            ),
          ]),
    );
  }
}