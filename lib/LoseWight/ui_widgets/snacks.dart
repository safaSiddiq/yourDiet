import 'package:flutter/material.dart';
import 'package:trackeat/LoseWight/ui_widgets/addWidget.dart';


Widget snacks(BuildContext context){
  final color = LinearGradient(
    begin: FractionalOffset.bottomLeft,
    stops: [
      0.0,
      1.0,
    ],
    colors: [Color(0xffE2DC2E), 
    Color(0xffEC6161)],
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
          child:Text("وجبات خفيفة",style: TextStyle(color:Colors.white,fontSize: 18)
        )),
        SizedBox(height:10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        addWidget(context),addWidget(context),addWidget(context),addWidget(context)
      ],),
      
      ])

);

}