import 'package:flutter/material.dart';


Widget addWidget(){
  return GestureDetector(child:
  
  Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.grey[400]
    ),
    child: Icon(Icons.watch_later,color: Colors.white,size: 32,),
    )
  );
}