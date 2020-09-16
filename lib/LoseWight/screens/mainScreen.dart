import 'package:flutter/material.dart';
import 'package:trackeat/LoseWight/ui_widgets/breakfast.dart';
import 'package:trackeat/LoseWight/ui_widgets/dinner.dart';
import 'package:trackeat/LoseWight/ui_widgets/lunch.dart';
import 'package:trackeat/LoseWight/ui_widgets/mainBord.dart';
import 'package:trackeat/LoseWight/ui_widgets/snacks.dart';
import 'package:trackeat/LoseWight/ui_widgets/water.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
   final mainColor = LinearGradient(
    begin: FractionalOffset.topCenter,
    stops: [
      0.0,
      1.0,
    ],
    colors: [Color(0xFF4C7DA7), Color(0xFF6F9AC1)],
  );
  @override
  Widget build(BuildContext context) {
 
    return 
    
    Scaffold(
      backgroundColor:Colors.white,//Color(0xFF4C7DA7),
      //  bottomNavigationBar: BottomNavigationBar(
      //    elevation: 0,
        
      //  //  type: BottomNavigationBarType.fixed,
      //         items: [
      //           BottomNavigationBarItem(
      //             backgroundColor: Color(0xFF4C7DA7),
      //               icon: Icon(Icons.home,color: Colors.white,), title: Text("")),
      //           BottomNavigationBarItem(
      //               icon: Icon(Icons.dashboard), title: Text("")),
      //               BottomNavigationBarItem(
      //               icon: Icon(Icons.receipt), title: Text("")),
      //               BottomNavigationBarItem(
      //               icon: Icon(Icons.person), title: Text(""))
      //         ],

              //backgroundColor: Colors.red,
              // content: Text("data")
          //  ),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal:25,vertical:10),
        child: ListView(
          
          children: <Widget>[
            miainBord() , 
              SizedBox(height:10),
            Directionality(textDirection: TextDirection.rtl, child: 
         Text(" وجبات اليوم",style: TextStyle(
           fontSize: 22,
           color:Color(0xFF4C7DA7))),
         ),
         SizedBox(height:10),
         breakFast(context),
         SizedBox(height:20),   
          luanch(context),
          SizedBox(height:20), 
          dinner(context),
           SizedBox(height:20), 
           snacks(context),
            SizedBox(height:20), 
            water(context)
          ],
      )),
    );
  }
}