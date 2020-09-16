import 'package:flutter/material.dart';
import 'package:trackeat/LoseWight/screens/homeScreen.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _userNameController = TextEditingController();
 TextEditingController _passwordController = TextEditingController();
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4C7DA7),
        elevation: 0,
      ),
      body: //SafeArea(
         //  minimum: EdgeInsets.symmetric(horizontal: 15,),
       ListView(children: <Widget>[
          Container(
            height: 170,
            decoration: BoxDecoration(
              color:  Color(0xFF4C7DA7),
              borderRadius: BorderRadius.only(bottomRight:
               Radius.circular(100))
           //, gradient: mainColor
            ),
          )
,
          
         

          
          SizedBox(height:60),
          _userName(),
          SizedBox(height :30),
          _password(),
            SizedBox(height:60),
          _button("تسجيل الدخول", (){
            Navigator.push(context,
             MaterialPageRoute(builder: (BuildContext context) 
                      => HomeScreen()));
          })
          

      ],)
    );

  }



Widget _userName(){
   return  Container(
margin: EdgeInsets.symmetric(horizontal:30),
   child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          
          controller: _userNameController,
          textDirection: TextDirection.rtl,
          style: TextStyle(fontSize:14),
          
          decoration: InputDecoration(
              labelText: 'اسم المستخدم',
              labelStyle: TextStyle(color:  Color(0xFF4C7DA7)),
              enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(32.0),
                borderSide:BorderSide(color:Color(0xFF4C7DA7),width: 2 ),),
             border:OutlineInputBorder(
                
                borderSide: BorderSide(color:Color(0xFF4C7DA7),width: 3 ),
                borderRadius: BorderRadius.circular(32.0),
                
              ),
              
              //    borderSide: BorderSide(color: Color(0xFF4C7DA7), width: 2.0)
            //  )),
          ),
          keyboardType: TextInputType.emailAddress,
          cursorColor: Colors.white,
          onSaved: (String value){
         
            },
        )));
}

Widget _password(){
   return Container(
margin: EdgeInsets.symmetric(horizontal:30),
   child:
   Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          controller: _passwordController,
          textDirection: TextDirection.rtl,
          style: TextStyle(fontSize:14),
          decoration: InputDecoration(
            
              labelText: 'كلمة المرور   ',
              labelStyle: TextStyle(color:  Color(0xFF4C7DA7)),
                enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(32.0),
                borderSide:BorderSide(color:Color(0xFF4C7DA7),width: 2 ),),
             border:OutlineInputBorder(
                
                borderSide: BorderSide(color:Color(0xFF4C7DA7),width: 3 ),
                borderRadius: BorderRadius.circular(32.0),
              ),
              
              //    borderSide: BorderSide(color: Color(0xFF4C7DA7), width: 2.0)
            //  )),
          ),
          keyboardType: TextInputType.emailAddress,
          cursorColor: Colors.white,
          onSaved: (String value){
         
            },
        )));
}

  Widget _button(String title,Function function) {
    return GestureDetector(
        child: Container(
         margin: EdgeInsets.symmetric(horizontal:30),
      padding: EdgeInsets.symmetric(horizontal: 90, vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32
          ),
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