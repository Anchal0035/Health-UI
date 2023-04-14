import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  int index;
  String  image;
  BottomNavBar({Key? key,required this.index,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(color: Colors.blue.shade100,

      backgroundColor: Colors.white,
      animationDuration: Duration(milliseconds: 400),

index:index ,

      items: [

        Icon(Icons.location_on),
        Image.asset(image,width: 50,),
        Icon(Icons.note_alt),

      ],

    );
  }
}
