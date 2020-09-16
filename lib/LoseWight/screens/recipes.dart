import 'package:flutter/material.dart';
import 'package:trackeat/LoseWight/ui_widgets/recipeCard.dart';


class Recipes extends StatefulWidget {
  @override
  _RecipesState createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
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
    return Container(
      decoration: BoxDecoration(
      //  gradient: mainColor
      color: Color(0xFF4C7DA7)
      ),
      child:Scaffold(
        backgroundColor: Color(0xff00000),
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Color(0xff0000),
        //   actions: <Widget>[
        //     IconButton(icon: Icon(Icons.favorite), onPressed: null)
        //   ],
        // ),
        body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal:10,vertical: 15),
          child:
         ListView(
        scrollDirection: Axis.vertical,
          
        
          children: <Widget>[
            SizedBox(height:15),
            Text("سلطات",style: TextStyle(color:Colors.white,fontSize: 26),textAlign: TextAlign.right,)
         
         ,
         SizedBox(height:5),
         SizedBox(height:150,child:
         ListView(
           scrollDirection: Axis.horizontal,
           children: <Widget>[
              recipeCard(context),
         recipeCard(context),
           recipeCard(context),
         recipeCard(context)
           ],
         )),
         SizedBox(height:10),
          Text("وجبات رئيسية",style: TextStyle(color:Colors.white,fontSize: 26),textAlign: TextAlign.right,)
         
         ,
          SizedBox(height:5),
         SizedBox(height:150,child:
         ListView(
           scrollDirection: Axis.horizontal,
           children: <Widget>[
              recipeCard(context),
         recipeCard(context),
           recipeCard(context),
         recipeCard(context)
           ],
         )),
              SizedBox(height:10),
           Text("أطباق جانبية",style: TextStyle(color:Colors.white,fontSize: 26),textAlign: TextAlign.right,)
         
         , SizedBox(height:5),
         SizedBox(height:150,child:
         ListView(
           scrollDirection: Axis.horizontal,
           children: <Widget>[
              recipeCard(context),
         recipeCard(context),
           recipeCard(context),
         recipeCard(context)
           ],
         )),
              SizedBox(height:10),
          Text("حلويات",style: TextStyle(color:Colors.white,fontSize: 26),textAlign: TextAlign.right,)
         
         , SizedBox(height:5),
         SizedBox(height:150,child:
         ListView(
           scrollDirection: Axis.horizontal,
           children: <Widget>[
              recipeCard(context),
         recipeCard(context),
           recipeCard(context),
         recipeCard(context)
           ],
         )),
          ],
        ),
      ))
    );
  }
}