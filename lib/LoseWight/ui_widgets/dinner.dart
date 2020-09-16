import 'package:flutter/material.dart';
import 'package:trackeat/LoseWight/ui_widgets/addWidget.dart';


Widget dinner(BuildContext context){
  final color = LinearGradient(
    begin: FractionalOffset.topCenter,
    stops: [
      0.0,
      1.0,
    ],
    colors: [Color(0xffBC4BB1), 
    Color(0xffD495C9)],
  );
return Container(
   padding: EdgeInsets.symmetric(horizontal:20,vertical :10),
    
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: color
    ),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
      children:<Widget>[
        Center(
          child:Text("العشاء",style: TextStyle(color:Colors.white,fontSize: 18)
        )),
        SizedBox(height:10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        addWidget(context),addWidget(context),addWidget(context),addWidget(context)
      ],),
      SizedBox(height:10),
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        addWidget(context),addWidget(context),addWidget(context),addWidget(context)
      ],)
      ])

);

}