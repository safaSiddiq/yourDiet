import 'package:flutter/material.dart';
import 'package:trackeat/General/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Tajawal-Medium',   //"Tajawal-Regular"//
      ),
      home:MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key,}) : super(key: key);


  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(

      
      
      ),
      body: Center(
       
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
         Center(child:IconButton(icon: Icon(Icons.wallpaper,size: 28,),
          onPressed: (){
           Navigator.push(context,
             MaterialPageRoute(builder: (BuildContext context) 
                      => Login()));
         }))
         
          ],
        ),
      ),
     
    );
  }
}
