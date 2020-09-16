import 'package:flutter/material.dart';
import 'package:trackeat/LoseWight/screens/recipeScreen.dart';

Widget recipeCard(BuildContext context){
  // return  Align(
  //     alignment: Alignment.topRight,
  //     child:
  // SizedBox(
  //   width: 100,
  //   child:
  
 return GestureDetector(
   onTap: (){
      Navigator.push(context,
             MaterialPageRoute(builder: (BuildContext context) 
                      => RecipeScreen()));
   },
   child:
 Container(
    
    padding: EdgeInsets.only(bottom:5,right: 5),
    height: 80,
    width: 170,
    //width: MediaQuery.of(context).size.width *5,
    margin: EdgeInsets.only(right:20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20),topRight: Radius.circular(20),
      
      ),
      color: Colors.white
    ),
    child:
     Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          
            Text("210"  "\n"
              
              "سعرة حرارية "  "\n" "لكل 100غ",style: TextStyle(fontSize: 11,),textAlign:TextAlign.center ,)
         
         ,  Align(alignment: Alignment.topLeft,child:
           Container(
             height: 100,
             width: 100,
          
             child:
            Image.asset("assets/sfg.png",fit: BoxFit.cover,))),
          ],
        ),
        
        Text("سلطة الخضروات",style: TextStyle(color:Color(0xFF4C7DA7),fontSize: 20,fontWeight: FontWeight.bold),)
      ],
    ),
  ));
}