import 'package:flutter/material.dart';
import 'package:trackeat/LoseWight/ui_widgets/addWidget.dart';


Widget breakFast(BuildContext context){
  final color = LinearGradient(
    begin: FractionalOffset.topCenter,
    stops: [
      0.0,
      1.0,
    ],
    colors: [Color(0xffFE6C6C), 
    Color(0xFFFE6C6C)],
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
          child:Text("الفطور",style: TextStyle(color:Colors.white,fontSize: 18)
        )),
        SizedBox(height:10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        addWidget( context),addWidget(context),addWidget(context),addWidget(context)
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