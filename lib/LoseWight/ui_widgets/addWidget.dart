import 'package:flutter/material.dart';
import 'package:trackeat/LoseWight/screens/searchProducts.dart';


Widget addWidget(BuildContext context){
  return GestureDetector(child:
  
  Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Color(0xffDFD8D8)
    ),
    child: Icon(Icons.add,color: Colors.white,size: 32,),
    ),
    onTap: (){
       Navigator.push(context,
             MaterialPageRoute(builder: (BuildContext context) 
                      => SearchProduct()));
    },
  );
}