import 'package:flutter/material.dart';


class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Color(0xFF4C7DA7),
      child:Scaffold(
        backgroundColor: Color(0xFF4C7DA7),
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Color(0xff0000),
    ),

    body: Column(
      children: <Widget>[
        Center(
          child:Column(
            children: <Widget>[
           _userName(),
                          Text("الاسم الأخير" , textAlign: TextAlign.right, 
                            style: TextStyle(color: Colors.white),),
                          _userName(),
                          Text(""),
                          _userName()

            ],
          )
        )
      ],
    ),
      )
      
    );
  }
    
  Widget _userName() {
    return Container(
        width: 220,
        height: 40,
//margin: EdgeInsets.symmetric(horizontal:30),
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextFormField(
              //  controller: _userNameController,
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 14),

              decoration: InputDecoration(
                labelText: 'اسم المستخدم',
                filled: true,
                fillColor: Colors.white,
                labelStyle: TextStyle(color: Color(0xFF4C7DA7)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  borderSide: BorderSide(color: Color(0xFF4C7DA7), width: 2),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF4C7DA7), width: 3),
                  borderRadius: BorderRadius.circular(32.0),
                ),

                //    borderSide: BorderSide(color: Color(0xFF4C7DA7), width: 2.0)
                //  )),
              ),
              keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.white,
              onSaved: (String value) {},
            )));
  }
  }
