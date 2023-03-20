import 'package:flipkart_clone/categories.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

import 'account.dart';
import 'cart.dart';
import 'model_class_categories.dart';
import 'notification.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController Search = TextEditingController();
  List catogory = [
    categories(image: "images/off.jpg", cat: "Top Offers"),
    categories(image: "images/mob.jpg", cat: "Mobiles and Tablets"),
    categories(image: "images/elec.jpg", cat: "Electronics & Accessories"),
    categories(image: "images/appl.jpg", cat: "TVs & Appliances"),
    categories(image: "images/fas.jpg", cat: "Fashion"),
    categories(image: "images/hom.jpg", cat: "Home & Furniture"),
    categories(image: "images/bea.jpg", cat: "Beauty,Toys & more"),
    categories(image: "images/fli.jpg", cat: "Flight Tickets"),
    categories(image: "images/groc.jpg", cat: "Grocery"),
    categories(image: "images/two.jpg", cat: "Bikes & Cars"),
  ];
  List off = [
    offer(img: "images/personal_care.jpg", text:"Top Discount on Personal Care" ,off: "Up to 40% Off"),
    offer(img: "images/fas.jpg",text:"Top Collection on Fashion" , off: "Up to 60% Off"),
    offer(img: "images/hom.jpg",text:"Grab Now your Home & Furnitures" , off: "Min.28% Off"),
    offer(img: "images/bea.jpg",text:"Best Picks in Toys & more" , off: "Up to 50% Off"),
    offer(img: "images/mob.jpg",text:" Offer on Mobiles & Tablets" , off: "Min.30% Off"),
    offer(img: "images/elec.jpg",text:"Top Discount on Electronics & Accessories" , off: "Up to 75% Off"),
    offer(img: "images/appl.jpg",text:"Best Seller in TVs & Appliances" , off: "Min.33% Off"),
  ];
  @override
  Widget build(BuildContext context) {
    List slider = [
      "images/s1.jpg",
      "images/s2.jpg",
      "images/s3.jpg",
      "images/s4.jpg",
      "images/s5.jpg",
      "images/s6.jpg",
      "images/s7.jpg",
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        flexibleSpace: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.menu),
                  SizedBox(width: 5),
                  Container(
                    height: 50,
                    child: Image.asset(
                      "images/IMG_20230126_233322.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 80),
                  Icon(Icons.notifications),
                  SizedBox(width: 10),
                  Icon(Icons.shopping_cart),
                ],
              ),
              SizedBox(height: 5),
              TextField(
                controller: Search,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.camera_alt_outlined),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    label: Text("Search For Products,Brands..."),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    hintText: "Search"),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: CarouselSlider(
                    items: slider
                        .map((item) => Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(item), fit: BoxFit.fill)),
                            ))
                        .toList(),
                    options: CarouselOptions(
                      viewportFraction: 0.999,
                      autoPlay: true,
                      height: 150,
                    )),
              ),
              SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                itemCount: catogory.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 21 / 30,
                    crossAxisCount: 5,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 10),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("${catogory[index].image}"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Text(
                          "${catogory[index].cat}",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage("images/big_app_ad.jpeg"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                itemCount: off.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 21 / 30,
                    crossAxisCount: 3,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 10),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage("${off[index].img}"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${off[index].text}",
                            style: TextStyle(fontSize: 10,),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${off[index].off}",
                            style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,letterSpacing: 1),
                          ),
                        ],
                      ),
                    ),
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
