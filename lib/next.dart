import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:health_solution/Home%20Screen.dart';
import 'package:health_solution/Profile.dart';

import 'Bottom Nav Bar.dart';

class Next extends StatelessWidget {
  const Next({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left:150),
          child: Text("Home",
            textAlign:  TextAlign.center,
            style:  GoogleFonts.inter (

              fontSize:  24,
              fontWeight:  FontWeight.w700,
              height:  1.2125/1,
              color:  Color(0xff000000),
            ),),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20,top: 5,bottom: 5),
            padding: const EdgeInsets.all(5.0),
            decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey)
            ) ,
            child: Icon( Icons.account_box,color: Colors.blue, ),

          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body: Column(
        children: [
          SizedBox(height: 5,),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  width: 50,
                  height: 50,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  Profile()),);
                    },
                      child: Image.asset("assets/images/1.png"))),

              Container(
                  padding: EdgeInsets.only(left: 10,bottom: 30),
                  child: Image.asset("assets/images/2.png",width: 20,)
              ),

              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,),
                        child: Text("Hey",style:
                        GoogleFonts.inter (
                          color: Colors.blue,
                          fontSize:  26,
                          fontWeight:  FontWeight.normal,
                          height:  1.2125/1,),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Allen",style:
                        GoogleFonts.inter (
                          fontSize:  26,
                          fontWeight:  FontWeight.normal,
                          height:  1.2125/1,),),
                      ),


                    ],
                  ),
                  Text("London",style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18
                  ),),

                ],
              )

            ],
          ),

          Container(
            height: 40,
            margin: EdgeInsets.only(left: 15,right: 15,top: 10),
            decoration: BoxDecoration(
              color: Color(0xffb9b5b5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                SizedBox(width: 15,),
                Icon(Icons.search),

                SizedBox(width: 20,),
                Text("Physician",style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),),

                Padding(
                  padding: const EdgeInsets.only(left: 200,right: 15),
                  child: Icon(Icons.mic),
                )
              ],
            ),
          ),



          Container(
            margin: EdgeInsets.only(top: 20,left: 30,right: 15),
            padding: EdgeInsets.only(left: 40),
            child: Row(
              children: [


                Container(
                  margin: EdgeInsets.only(right: 30),
                  padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: Text("Doctors",style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
                ),

                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomeScreen()),);
                  },
                  child: Text("Hospitals",style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ],
            ),
          ),







          Container(
            margin: EdgeInsets.only(left: 15,right: 15,top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0xffb9b5b5)),
            ),
            child:Column(
              children: [

                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 7,top: 7,bottom: 5,right: 30),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Color(0xffb9b5b5)),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("ACMH Hospital",style: GoogleFonts.inter(
                                fontSize:22,
                                fontWeight: FontWeight.normal,
                              ),),
                              Text("Place Name",style: GoogleFonts.inter(
                                fontSize:18,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                              ),),
                            ],
                          ),

                          Container(
                            padding: EdgeInsets.only(left: 20,),
                            child: Column(
                              children: [
                                Row(
                                  children: [

                                    Icon(Icons.star_rounded,color: Colors.amber,),
                                    Text("4.3B",style: GoogleFonts.inter(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey,
                                        fontSize: 16
                                    ),),
                                    SizedBox(width: 10,),
                                    Text("\$400",style: GoogleFonts.inter(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16
                                    ),),


                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 15,right: 15,top: 4,bottom: 4),
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on),
                                      Text("4.3 Km"),
                                    ],
                                  ),

                                )
                              ],
                            ),
                          )



                        ],
                      ),

                    ),
                    Positioned(
                      // rectangle13KP1 (1:28)
                      left:  330,
                      top:  30,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  41,
                          height:  39,
                          child:
                          Container(
                            decoration:  BoxDecoration (
                                color:  Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xffb9b5b5))
                            ),
                            child: Icon(Icons.phone_enabled,color: Colors.green,),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 7,top: 7,bottom: 5,right: 30),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Color(0xffb9b5b5)),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("ACMH Hospital",style: GoogleFonts.inter(
                                fontSize:22,
                                fontWeight: FontWeight.normal,
                              ),),
                              Text("Place Name",style: GoogleFonts.inter(
                                fontSize:18,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                              ),),
                            ],
                          ),

                          Container(
                            padding: EdgeInsets.only(left: 20,),
                            child: Column(
                              children: [
                                Row(
                                  children: [

                                    Icon(Icons.star_rounded,color: Colors.amber,),
                                    Text("4.3B",style: GoogleFonts.inter(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey,
                                        fontSize: 16
                                    ),),
                                    SizedBox(width: 10,),
                                    Text("\$400",style: GoogleFonts.inter(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16
                                    ),),


                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 15,right: 15,top: 4,bottom: 4),
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on),
                                      Text("4.3 Km"),
                                    ],
                                  ),

                                )
                              ],
                            ),
                          )
                        ],
                      ),

                    ),
                    Positioned(
                      // rectangle13KP1 (1:28)
                      left:  330,
                      top:  30,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  41,
                          height:  39,
                          child:
                          Container(
                            decoration:  BoxDecoration (
                                color:  Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xffb9b5b5))
                            ),
                            child: Icon(Icons.phone_enabled,color: Colors.green,),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 7,top: 7,bottom: 5,right: 30),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Color(0xffb9b5b5)),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("ACMH Hospital",style: GoogleFonts.inter(
                                fontSize:22,
                                fontWeight: FontWeight.normal,
                              ),),
                              Text("Place Name",style: GoogleFonts.inter(
                                fontSize:18,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                              ),),
                            ],
                          ),

                          Container(
                            padding: EdgeInsets.only(left: 20,),
                            child: Column(
                              children: [
                                Row(
                                  children: [

                                    Icon(Icons.star_rounded,color: Colors.amber,),
                                    Text("4.3B",style: GoogleFonts.inter(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey,
                                        fontSize: 16
                                    ),),
                                    SizedBox(width: 10,),
                                    Text("\$400",style: GoogleFonts.inter(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16
                                    ),),


                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 15,right: 15,top: 4,bottom: 4),
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on),
                                      Text("4.3 Km"),
                                    ],
                                  ),

                                )
                              ],
                            ),
                          )



                        ],
                      ),

                    ),
                    Positioned(
                      // rectangle13KP1 (1:28)
                      left:  330,
                      top:  30,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  41,
                          height:  39,
                          child:
                          Container(
                            decoration:  BoxDecoration (
                                color:  Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xffb9b5b5))
                            ),
                            child: Icon(Icons.phone_enabled,color: Colors.green,),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 7,top: 7,bottom: 7,right: 30),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Color(0xffb9b5b5)),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("ACMH Hospital",style: GoogleFonts.inter(
                                fontSize:22,
                                fontWeight: FontWeight.normal,
                              ),),
                              Text("Place Name",style: GoogleFonts.inter(
                                fontSize:18,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                              ),),
                            ],
                          ),

                          Container(
                            padding: EdgeInsets.only(left: 20,),
                            child: Column(
                              children: [
                                Row(
                                  children: [

                                    Icon(Icons.star_rounded,color: Colors.amber,),
                                    Text("4.3B",style: GoogleFonts.inter(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey,
                                        fontSize: 16
                                    ),),
                                    SizedBox(width: 10,),
                                    Text("\$400",style: GoogleFonts.inter(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16
                                    ),),


                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 15,right: 15,top: 4,bottom: 4),
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on),
                                      Text("4.3 Km"),
                                    ],
                                  ),

                                )
                              ],
                            ),
                          )



                        ],
                      ),

                    ),
                    Positioned(
                      // rectangle13KP1 (1:28)
                      left:  330,
                      top:  30,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  41,
                          height:  39,
                          child:
                          Container(
                            decoration:  BoxDecoration (
                                color:  Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xffb9b5b5))
                            ),
                            child: Icon(Icons.phone_enabled,color: Colors.green,),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          Container(
            height: 130,
            width: double.infinity,

            margin: EdgeInsets.only(left: 15,right: 15,top: 10),
            child: Image.asset("assets/images/img_1.png",fit: BoxFit.cover,),
          )





        ],
      ),
      bottomNavigationBar:BottomNavBar(index: 1,image: "assets/images/img.png",),

    );
  }
}
