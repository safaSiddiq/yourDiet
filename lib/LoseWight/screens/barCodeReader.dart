
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BarcodeReader extends StatefulWidget {
  @override
  _BarcodeReaderState createState() => _BarcodeReaderState();
}

class _BarcodeReaderState extends State<BarcodeReader> {

  
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Color(0xff0000),
            ),
           
            body: Container(
              child:IconButton(
                icon: Icon(Icons.scanner),
                onPressed: (){
               
                },
              )
            
        )
            
            
               
            ));
  }
}
