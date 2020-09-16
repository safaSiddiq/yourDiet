
import 'package:flutter/material.dart';
import 'package:trackeat/LoseWight/screens/barCodeReader.dart';
import 'package:trackeat/LoseWight/ui_widgets/foodCard.dart';

class SearchProduct extends StatefulWidget {
  @override
  _SearchProductState createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
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
          
         // gradient: mainColor
          color: Color(0xFF4C7DA7)
          ),
        child: Scaffold(
          backgroundColor: Color(0xff00000),
           appBar:// PreferredSize( preferredSize: Size(double.infinity, 80),child: 
          AppBar(
                elevation: 0,
                backgroundColor: Color(0xff0000),
                
                actions: <Widget>[
                  Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                         IconButton(icon: Icon(Icons.scanner
                         ,color: Colors.white,
                         size: 26,
                         ), onPressed: // () => {_scanBarcode(context)},
                         (){
                            Navigator.push(context,
             MaterialPageRoute(builder: (BuildContext context) 
                      => BarcodeReader()));
                        }
                         ),
                      RawMaterialButton(
                          onPressed: () {
                            // showSearch(
                            //     context: context,
                            //     delegate: DataSearch(_list));
                          },
                          child: Container(
                              alignment: Alignment.topLeft,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              margin: EdgeInsets.only(
                                top: 10,
                                bottom: 2,
                                // right: 30,
                              ),
                              //width: 280,
                              width: MediaQuery.of(context).size.width * 0.70,
                              child: Directionality(textDirection: TextDirection.rtl, child:
                              IconButton(
                                
                                  icon: Icon(
                                    Icons.search,
                                    color: Color(0xFF4C7DA7),
                                  ),
                                  onPressed: () {})))),
                    ],
                  )
                ],
              ),//),
          body:SafeArea(
            minimum: EdgeInsets.only(right:25,left: 25,top: 30),
            child: 
           ListView(
            children: <Widget>[
              
              foodCard(context),
              foodCard(context),
              foodCard(context),
              foodCard(context),
              foodCard(context)
            ],
          ),
        )));
  }
}
