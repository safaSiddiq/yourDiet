import 'package:flutter/material.dart';


class RecipeScreen extends StatefulWidget {
  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF4C7DA7),
        
          // bottom:  PreferredSize( 
          //   preferredSize: Size(double.infinity, 150),
          
          // child:  Container(
          //    height:150,
          //   decoration: BoxDecoration(
           
          //   color: Colors.red,
          //   borderRadius:
          //    BorderRadius.only(bottomRight: Radius.circular(40))
          // ),)
          // )
        ),

        body: SafeArea(
          minimum: EdgeInsets.only(right:10,bottom: 10),
          child:
         ListView(
          children: <Widget>[
          //     Container(
          //    height:200,
          
          //   decoration: BoxDecoration(
           
            
          //   borderRadius:
          //    BorderRadius.only(bottomRight: Radius.circular(40)),

          // ),
          // child: 
          Container(
            height:260,
        margin: EdgeInsets.only(right:100,),
            
            child:
          Image.asset("assets/sfg.png",fit: BoxFit.cover,),),
        //  ),
          SizedBox(height:5),
         Center(child:    Text("سلطة الخضروات",style: TextStyle(color:Color(0xFF4C7DA7),fontSize: 20,fontWeight: FontWeight.bold),)),
         SizedBox(height:15),
      Text("المقادير -",style: TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.right,),
        Text("المقادير -",style: TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.right,)
     ,Text("ddddddddddddddddddd" "\n""ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssdddddddddd""\n" "ffffffffffffffffffffffffffffffffffffffffffffffffffffffiurtg",style: TextStyle(fontSize: 16),)
          ],
        ),
      ),
      )
    );
  }
}