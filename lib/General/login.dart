
import 'package:flutter/material.dart';
import 'package:trackeat/General/LoginPage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final mainColor = LinearGradient(
    begin: FractionalOffset.topCenter,
    stops: [
      0.0,
      1.0,
    ],
    colors: [Color(0xFF4C7DA7), 
    Color(0xFF6F9AC1)],
  );
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(gradient: mainColor),
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Color(0xFF4C7DA7),
              automaticallyImplyLeading: true,
            ),
            body: SafeArea(
              minimum: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 175),
                  Center(
                    child: Column(
                      children: <Widget>[
                        _button("تسجيل دخول",(){
                            Navigator.push(context,
             MaterialPageRoute(builder: (BuildContext context) 
                      => LoginPage()));
                        }),
                        SizedBox(height: 15),
                        _button("إنشاء حساب",(){})
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  // Expanded(child:
                  Row(
                    textDirection: TextDirection.rtl,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "تسجيل دخول بإستخدام   ",
                        textAlign: TextAlign.right,
                      ),
                      Expanded(
                        child: Divider(
                          color: Color(0xFF4C7DA7),
                          thickness: 3,
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 15),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal:50),
                  child:
             Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: 60,
                        child:
                     GestureDetector(
                       child: Image.asset("assets/facebook.png"),
                       onTap: (){

                       },
                     )),
                      Container(
                        height: 60,
                        width: 60,
                        child:
                     GestureDetector(
                       child: Image.asset("assets/google.png"),
                       onTap: (){

                       },
                     ))

                    ],
                  ))
                ],
              ),
            )));
  }

  Widget _button(String title,Function function) {
    return GestureDetector(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // gradient: mainColor
          color: Color(0xFF4C7DA7)),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontFamily: "Tajawal-Regular", fontSize: 18),
      ),
    ),
    onTap: function,
    );
  }
}
