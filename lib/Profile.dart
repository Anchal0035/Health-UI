import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Bottom Nav Bar.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    bool _isChecked=false;

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: screenWidth/4,top: 20),
              child: Image.asset("assets/images/1.png",fit: BoxFit.cover,)),

    BackdropFilter(
    filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
    child: Container(
    color: Colors.black.withOpacity(0.5),
    ),
    ),



          Container(
            margin: EdgeInsets.only(top: screenWidth/6,left: 15),
            child: Icon(Icons.arrow_back_ios,color: Colors.white,),
          ),

          Container(
            margin: EdgeInsets.only(top: screenWidth/6,left: screenWidth/2.5),
            child: Text("Profile",style: GoogleFonts.inter(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),),
          ),
          Container(
            margin: EdgeInsets.only(top: screenWidth/6,left: 370),
            child: Icon(Icons.settings,color: Colors.white,),
          ),
          Container(
            margin: EdgeInsets.only(top: 200),
            width: double.infinity,
            height: screenHeight,
            //color: Colors.white,
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
            ),
          ),


          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30,top: 150),
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                        color: Colors.blue,
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top:210,left:30),
                    child: Column(
                      children: [
                        Text("AJ. ALLEN",style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),),
                        Text("30.05.1996",style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                        ),),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          margin: EdgeInsets.only(right: 40),
                          padding: EdgeInsets.only(left: 10,right: 10,top: 3,bottom: 3),
                          child: Text("Male",style: TextStyle(
                            color: Colors.white,
                          ),),
                        )

                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  SizedBox(width: 15,),
                  Text("Profile Settings",style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),),
                  SizedBox(width: 180,),
                  Icon(Icons.edit,color: Colors.blue,),
                ],
              ),
              //SizedBox(height: 5,),
              Container(
                margin: EdgeInsets.only(left: 15,right: 15),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                ),
              ),


              Container(
                margin: EdgeInsets.only(top:15,left: 18,right: 15),
                child: Row(
                  children: [
                    Text("Phone no.",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                        fontSize: 20
                    ),),
                    SizedBox(width: 150,),
                    Text("1234567890",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                        fontSize: 20
                    ),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18,right: 15,top:15),
                child: Row(
                  children: [
                    Text("Email",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                        fontSize: 20
                    ),),
                    SizedBox(width: 150,),
                    Text("allen@gmail.com",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                        fontSize: 20
                    ),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18,right: 15,),
                child: Row(
                  children: [
                    Text("Password",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                        fontSize: 20
                    ),),
                    SizedBox(width: 150,),
                    Container(margin: EdgeInsets.only(bottom: 20),
                      child: Text(".....",style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 50
                      ),),
                    ),
                  ],
                ),
              ),

              Row(
                children: [
                  SizedBox(width: 15,),
                  Text("Insurence Details",style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),),
                  SizedBox(width: 155,),
                  Icon(Icons.lock,color: Colors.pink,),
                ],
              ),

              Container(
                margin: EdgeInsets.only(left: 15,right: 15),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18,right: 15,top:10),
                child: Row(
                  children: [
                    Text("Insurance name",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                        fontSize: 20
                    ),),
                    SizedBox(width: 175,),
                    Text("Allen",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                        fontSize: 20
                    ),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18,right: 15,top:10),
                child: Row(
                  children: [
                    Text("Insurance number",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                        fontSize: 20
                    ),),
                    SizedBox(width: 70,),
                    Text("XXXXXXXXXX",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                        fontSize: 20
                    ),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18,right: 15,top:10),
                child: Row(
                  children: [
                    Text("Specialist Co-Insurance",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                        fontSize: 20
                    ),),
                    SizedBox(width: 90,),
                    Text("\$ XXX",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                        fontSize: 20
                    ),),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 18,right: 15,top:10),
                child: Row(
                  children: [
                    Text("Primary Care Co-Insurance",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                        fontSize: 20
                    ),),
                    SizedBox(width: 63,),
                    Text("\$XXX",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                        fontSize: 20
                    ),),
                  ],
                ),
              ),

              Row(
                children: [
                  SizedBox(width: 15,),
                  Text("Account",style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),),
                  SizedBox(width: 260,),
                  Icon(Icons.edit,color: Colors.blue,),
                ],
              ),

              Container(
                margin: EdgeInsets.only(left: 15,right: 15),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 18,right: 280,top:15),
                child:
                    Text("Notification",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                        fontSize: 20
                    ),),
              ),

              Container(
                margin: EdgeInsets.only(left: 18,right: 15,top:10),
                child: Row(
                  children: [
                    Text("Two factor Authentication",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                        fontSize: 20
                    ),),
                    SizedBox(width: 59,),
                    FlutterSwitch(

                      activeToggleColor: Color(0xFF0082C8),
                      inactiveToggleColor: Color(0xFF01579B),
                      value: _isChecked,
                      onToggle: (value) {
                        setState(() {
                          _isChecked = value;
                        });
                      },
                    ),



                  ],
                ),
              ),

            ],
          ),


        ],
      ),


      bottomNavigationBar: BottomNavBar(index: 1,image:"assets/images/1.png" ,),
    );
  }
}
