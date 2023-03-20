import 'package:flipkart_clone/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

import 'account.dart';
import 'cart.dart';
import 'model_class_categories.dart';
import 'notification.dart';

class ctgry extends StatefulWidget {
  const ctgry({Key? key}) : super(key: key);

  @override
  State<ctgry> createState() => _ctgryState();
}

class _ctgryState extends State<ctgry> {
  List catogory = [
    categories(image: "images/off.jpg", cat: "Top Offers"),
    categories(image: "images/mob.jpg", cat: "Mobiles & Tab"),
    categories(image: "images/elec.jpg", cat: "Electronics"),
    categories(image: "images/appl.jpg", cat: "TVs & Appliances"),
    categories(image: "images/fas.jpg", cat: "Fashion"),
    categories(image: "images/hom.jpg", cat: "Home & Furniture"),
    categories(image: "images/bea.jpg", cat: "Toys & more"),
    categories(image: "images/fli.jpg", cat: "Flight Tickets"),
    categories(image: "images/groc.jpg", cat: "Grocery"),
    categories(image: "images/two.jpg", cat: "Bikes & Cars"),
    categories(image: "images/personal_care.jpg", cat: "Personal Care"),
    categories(image: "images/furniture.jpg", cat: "Furniture"),
    categories(image: "images/sports.jpg", cat: "Sports"),
    categories(image: "images/insurance.jpg", cat: "Insurance"),
    categories(image: "images/nutritions.jpg", cat: "Nutrition & more"),
    categories(image: "images/sell_back.jpg", cat: "Sell Back"),
    categories(image: "images/medicine.jpg", cat: "Medicines"),
    categories(image: "images/home_service.jpg", cat: "Home Services"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff3374FF),
          title: Text(
            "All Categories",
            style: TextStyle(color: Colors.white),
          ),actions: [Row(children: [Icon(Icons.search),Padding(
            padding: const EdgeInsets.only(right: 20,left: 10),
            child: Icon(Icons.mic),
          )],)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              GridView.builder(
                itemCount: catogory.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 21 / 28,
                    crossAxisCount: 4,
                    crossAxisSpacing: 4.0,
                    // mainAxisSpacing: 2
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          height: MediaQuery.of(context).size.width/5.3,
                          width: MediaQuery.of(context).size.width/5.3,
                          child: Image(
                            image: AssetImage("${catogory[index].image}"),fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Text(
                          "${catogory[index].cat}",
                          style: TextStyle(fontSize: 11,color: Colors.black),
                        ),
                      ),
                      Divider(color: Colors.grey, endIndent: 0, indent: 0)
                    ],
                  );
                },
              ),
            ],
          ),
        ),
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
