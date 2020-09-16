import 'package:flutter/material.dart';
import 'package:flutter_counter/flutter_counter.dart';
import 'package:trackeat/General/LoginPage.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  num _defaultValue = 1000;
  num _defaultValue1 = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      
        child: Scaffold(
            backgroundColor: Color(0xFF4C7DA7),
            appBar: AppBar(
              backgroundColor: Color(0xff0000),
              elevation: 0,
            ),
            body: SafeArea(
              minimum: EdgeInsets.only(left: 15, right: 15, bottom: 40),
              child: ListView(
                children: <Widget>[
                  Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.person,
                            size: 90,
                            color: Colors.white,
                          ),
                          Text("اسم المستخدم"  ,textAlign: TextAlign.center, 
                            style: TextStyle(color: Colors.white),)
                        ],
                      ),
                      Column(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          Directionality(
                              textDirection: TextDirection.rtl,
                              child: Text(
                                "الاسم الأول",
                                textAlign: TextAlign.right,
                                style: TextStyle(color: Colors.white),
                              )),
                          _userName(),
                          Text("الاسم الأخير" , textAlign: TextAlign.right, 
                            style: TextStyle(color: Colors.white),),
                          _userName(),
                          Text(""),
                          _userName()
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        "بياناتك",
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "طولك",
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.white),
                          ),
                          Container(
                            height: 50,
                           
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              color: Colors.white,
                            ),
                            child: Counter(
                              buttonSize: 24,
                              textStyle: TextStyle(fontSize: 18),
                              color: Color(0xFF4C7DA7),
                              initialValue: 160,
                              minValue: 0,
                              maxValue: 20000,
                              step:1,
                              decimalPlaces: 0,
                              onChanged: (value) {
                                // get the latest value from here
                                setState(() {
                                  _defaultValue = value;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "وزنك",
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.white),
                          ),
                          Container(
                             padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 50,
                          //  width: 95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              color: Colors.white,
                            ),
                            child:Counter(
                              buttonSize: 24,
                              textStyle: TextStyle(fontSize: 18),
                              color: Color(0xFF4C7DA7),
                              initialValue: 60,
                              minValue: 0,
                              maxValue: 10000,
                              step: 1,
                              decimalPlaces: 1,
                              onChanged: (value) {
                                // get the latest value from here
                                setState(() {
                                  _defaultValue = value;
                                });
                              },
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 25),
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        "أهداف يومك",
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "خطوات",
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.white),
                          ),
                          Container(
                             padding: EdgeInsets.symmetric(horizontal: 2),
                            height: 50,
                           // width: 95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              color: Colors.white,
                            ),
                            child: Counter(
                              buttonSize: 24,
                              textStyle: TextStyle(fontSize: 18),
                              color: Color(0xFF4C7DA7),
                              initialValue: _defaultValue,
                              minValue: 0,
                              maxValue: 10000,
                              step: 0.5,
                              decimalPlaces: 0,
                              onChanged: (value) {
                                // get the latest value from here
                                setState(() {
                                  _defaultValue = value;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                          "سعرات حرارية", 
                            textAlign: TextAlign.right, 
                            style: TextStyle(color: Colors.white),
                          ),
                          Container(
                             padding: EdgeInsets.symmetric(horizontal: 5),
                            height: 50,
                         //   width: 95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              color: Colors.white,
                            ),
                            child: Counter(
                              buttonSize: 24,
                              textStyle: TextStyle(fontSize: 18),
                              color: Color(0xFF4C7DA7),
                              initialValue: 1000,
                              minValue: 0,
                              maxValue: 10000,
                              step: 1,
                              decimalPlaces: 0,
                              onChanged: (value) {
                                // get the latest value from here
                                setState(() {
                                  _defaultValue = value;
                                });
                              },
                            ),
                          )
                        ],),
                      
                      Column(
                        children: <Widget>[
                          Text(
                            "أكواب الماء", 
                            textAlign: TextAlign.right, 
                            style: TextStyle(color: Colors.white),
                          ),
                          Container(
                             padding: EdgeInsets.symmetric(horizontal: 2),
                            height: 50,
                           // width: 95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              color: Colors.white,
                            ),
                            child:Counter(
                              buttonSize: 24,
                              textStyle: TextStyle(fontSize: 18),
                              color: Color(0xFF4C7DA7),
                              initialValue: _defaultValue1,
                              minValue: 0,
                              maxValue: 6,
                              step: 0.5,
                              decimalPlaces: 1,
                              onChanged: (value) {
                                // get the latest value from here
                                setState(() {
                                  _defaultValue1 = value;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
        //FloatingActionButton(
               

             GestureDetector(
                 onTap :(){
                       Navigator.push(
                        context,
                         MaterialPageRoute(builder:
                          (BuildContext context) 
                      => LoginPage()));
                  },
           // shape: ,Sha
                child:
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(
                      right: 25,
                      left: 25,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    child: Center(child: Text("تغيير كلمة ا لمرور",style: TextStyle(fontSize: 17,color: Color(0xFF4C7DA7)),)),
                  ),
              
           ),
                  SizedBox(height: 15),
                 GestureDetector(child: Container(
                    height: 50,
                    margin: EdgeInsets.only(
                      right: 25,
                      left: 25,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    child: Center(child: Text("تسجيل الخروج",style: TextStyle(color:Colors.red,fontSize: 17),)),
                  ),
                  onTap: (){
                    
                  },)
                ],
              ),
            )));
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
