import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flipkart_clone/home.dart';
import 'package:flipkart_clone/model_class_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class Account extends StatefulWidget {

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {

  List account = [
    acct(head:Boxicons.bxs_package,body: "Orders"),
    acct(head:Icons.favorite_outline,body: "Wishlist"),
    acct(head:MdiIcons.giftOutline,body: "Coupons"),
    acct(head:Icons.headset_mic_outlined,body: "Help Center")
  ];

  List acset=[
    acsettings(icn:Icons.add_box_outlined,tex: "Flipkart Plus"),
    acsettings(icn:Icons.person,tex: "Edit Profile"),
    acsettings(icn:Icons.save,tex: "Saved Cards & Wallet"),
    acsettings(icn:Icons.location_on_sharp,tex: "Saved Addresses"),
    acsettings(icn:Icons.language_sharp,tex: "Selected Languages"),
    acsettings(icn:Icons.notification_add,tex: "Notification Settings"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 75,
                  width: double.maxFinite,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Hey! Nidhin Ajay ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text("Explore",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 15,),),
                          SizedBox(width: 5),
                          Text("Flipkart",style: TextStyle(color:Color(0xff3374FF),fontWeight: FontWeight.bold,fontSize: 15,fontStyle: FontStyle.italic ),),
                          SizedBox(width: 5),
                          Text("Plus",style: TextStyle(color:Colors.yellow,fontWeight: FontWeight.bold,fontSize: 15,fontStyle: FontStyle.italic ),),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Divider(color: Colors.grey, endIndent: 0, indent: 0,thickness: 0.8),
              SizedBox(height: 3),
              GridView.builder(padding: EdgeInsets.zero,
                itemCount: account.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 25/10,
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(elevation: 2,margin: EdgeInsets.symmetric(horizontal: 5),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(account[index].head,
                                  color: Color(0xff3374FF),),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("${account[index].body}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              Divider(color: Colors.black12, endIndent: 0, indent: 0,thickness: 8,),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Account Settings",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),

                ],
              ),

              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: acset.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 20,
                              width: double.maxFinite,

                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Icon(acset[index].icn,color: Color(0xff3374FF),),
                                  ),
                                  Text("Flipkart Plus",style: TextStyle(fontWeight: FontWeight.w400),),
                                ],
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 20,
                              width: double.maxFinite,
                              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                children: [

                                  Icon(Icons.arrow_forward_ios,size: 15,),
                                ],
                              ),
                            ),
                          ),
                        ),


                      ],
                    ),
                  );
                },
              ),

              Divider(color: Colors.black12, endIndent: 0, indent: 0,thickness: 8,),


              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("My Activity",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),

                ],
              ),


              Container(
                height: 50,
                width: double.maxFinite,

                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 20,
                          width: double.maxFinite,

                          child: Row(
                            children: [
                              Icon(Icons.rate_review_outlined,color: Colors.blue,),
                              Text("Reviews",style: TextStyle(fontWeight: FontWeight.w400),),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 20,
                          width: double.maxFinite,
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: [

                              Icon(Icons.arrow_forward_ios,size: 15,),
                            ],
                          ),
                        ),
                      ),
                    ),


                  ],
                ),

              ),
              Container(
                height: 50,
                width: double.maxFinite,

                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 20,
                          width: double.maxFinite,

                          child: Row(
                            children: [
                              Icon(Icons.question_answer,color: Colors.blue,),
                              Text(" Question &Answers",style: TextStyle(fontWeight: FontWeight.w400),),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 20,
                          width: double.maxFinite,
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: [

                              Icon(Icons.arrow_forward_ios,size: 15,),
                            ],
                          ),
                        ),
                      ),
                    ),


                  ],
                ),

              ),
              Container(
                  height: 1,
                  width: double.maxFinite,
                  color: Colors.black12
              ),

              Container(
                  height: 1,
                  width: double.maxFinite,
                  color: Colors.black12
              ),

              Container(
                  height: 1,
                  width: double.maxFinite,
                  color: Colors.black12
              ),

              Container(
                  height: 1,
                  width: double.maxFinite,
                  color: Colors.black12
              ),

              Container(
                  height: 1,
                  width: double.maxFinite,
                  color: Colors.black12
              ),

              Container(
                  height: 1,
                  width: double.maxFinite,
                  color: Colors.black12
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Earn With Flipkart",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),

                ],
              ),


              Container(
                height: 50,
                width: double.maxFinite,

                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 20,
                          width: double.maxFinite,

                          child: Row(
                            children: [
                              Icon(Icons.star_border_outlined,color: Colors.blue,),
                              Text("Flipkart Creator Studio",style: TextStyle(fontWeight: FontWeight.w400),),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 20,
                          width: double.maxFinite,
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: [

                              Icon(Icons.arrow_forward_ios,size: 15,),
                            ],
                          ),
                        ),
                      ),
                    ),


                  ],
                ),

              ),
              Container(
                height: 50,
                width: double.maxFinite,

                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 20,
                          width: double.maxFinite,

                          child: Row(
                            children: [
                              Icon(Icons.home_work_outlined,color: Colors.blue,),
                              Text("Sell on Flipkart",style: TextStyle(fontWeight: FontWeight.w400),),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 20,
                          width: double.maxFinite,
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: [

                              Icon(Icons.arrow_forward_ios,size: 15,),
                            ],
                          ),
                        ),
                      ),
                    ),


                  ],
                ),

              ),
              Container(
                height: 50,
                width: double.maxFinite,
                color: Colors.black12,
                child: Row(
                  children: [

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),

                        child: GestureDetector(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()),
                          );

                        },
                          child: Container(
                            height: 30,
                            width: double.maxFinite,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10,),color: Colors.white),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Log Out",style: TextStyle( color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],


                ),
              ),




            ],
          ),
        ),




      ),





    );
  }
}