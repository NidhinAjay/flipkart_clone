import 'package:flipkart_clone/categories.dart';
import 'package:flipkart_clone/home.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:flutter/material.dart';

import 'account.dart';
import 'cart.dart';
import 'model_class_categories.dart';
class notif extends StatefulWidget {
  const notif({Key? key}) : super(key: key);

  @override
  State<notif> createState() => _ctgryState();
}

class _ctgryState extends State<notif> {

  List noti=[
    notifi(
        head: "Extra Upto 20% Off for PLUS",
        body: "Make the most of your plus benefits!Get extra discount on home & appliances,Gaming Keyboards & more from top brands.",
        img: "images/noti_1.jpeg",
      foot: "3 days ago"),
    notifi(
        head: "Get ₹3,000 off on MacBook",
        body: "Sign-up for Student's Club and unlock Exclusive Discounts on top brands like Apple & more! Sign Up >",
        img: "images/noti_2.jpeg",
        foot: "4 days ago"),
    notifi(
        head: "Medicines at Min 30% off",
        body: "Avail the offer on 1st order above ₹999 & claim 1% Health+ Wallet cashback too! Stock-up Medicines Now >",
        img: "images/noti_3.jpeg",
        foot: "5 days ago"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3374FF),
        title: Text(
          "Notifications",
          style: TextStyle(color: Colors.white),
        ),actions: [Row(children: [Icon(Icons.search),Padding(
        padding: const EdgeInsets.only(right: 20,left: 10),
        child: Icon(Icons.mic),
      )],)],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: noti.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(height: 5,),
              ListTile(
                  dense: false,
                  minLeadingWidth: 10,
                  horizontalTitleGap: 5,
                visualDensity: VisualDensity(vertical: 4),
                leading: Container(
                  height: 60,
                  width: 20,
                  alignment: Alignment(1,-.8),
                  child: Icon(Boxicons.bxs_offer,size: 18,
                      color:Color(0xff3374FF)),
                ),


                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${noti[index].head}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${noti[index].body}",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 11,
                            fontWeight: FontWeight.w300),
                      ),
                      // Text(
                      //   "${noti[index].foot}",
                      //   style: TextStyle(
                      //       color: Colors.black,
                      //       fontSize: 12,
                      //       fontWeight: FontWeight.w700),
                      // ),
                    ],
                  ),
                  trailing: Container(
                    height: MediaQuery.of(context).size.width/4,
                      width: MediaQuery.of(context).size.width/4,
                      child: Image.asset("${noti[index].img}",fit: BoxFit.cover,))

              ),
              Divider(color: Colors.grey, endIndent: 16, indent: 16)
            ],
          );
        },
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