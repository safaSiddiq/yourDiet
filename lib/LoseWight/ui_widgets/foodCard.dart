
import 'package:flutter/material.dart';

Widget foodCard(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(bottom:15),
    height: MediaQuery.of(context).size.width * 0.20,
    width: MediaQuery.of(context).size.width * 0.60,
    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), color: Colors.white),
    child: Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Image.asset("assets/sd.jpg"),
        ),
        Container(
          color: Color(0xFF4C7DA7),
          height: MediaQuery.of(context).size.width * 0.18,
          width: 5,
        ),
        SizedBox(width: 5),
        Container(
          padding: EdgeInsets.symmetric(horizontal:5),
        child:
        Column(
          
          children: <Widget>[
            InkWell(
              child: Text("موز",style: TextStyle(color:Color(0xFF4C7DA7),fontSize: 17,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height:5),
           
           Row(
             textDirection: TextDirection.rtl,
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[

            Text(" : عدد السعرات الحرارية لكل 100غ ",style: TextStyle(fontSize: 12),),
            Text("200",style: TextStyle(fontSize: 12),)
         ],) 
          ],
        ))
      ],
    ),
  );
}
