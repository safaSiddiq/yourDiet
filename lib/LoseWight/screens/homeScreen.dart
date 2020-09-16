import 'package:flutter/material.dart';

import 'package:trackeat/LoseWight/screens/barCodeReader.dart';
import 'package:trackeat/LoseWight/screens/mainScreen.dart';
import 'package:trackeat/LoseWight/screens/profile.dart';
import 'package:trackeat/LoseWight/screens/recipes.dart';


import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  PersistentTabController _controller ;
  bool _hideNavBar ;

  List<Widget> _buildScreens() {
    return [
    MainScreen(),
       BarcodeReader(),
    Recipes(),
     ProfileScreen()
      // MainScreen(
      //   menuScreenContext: widget.menuScreenContext,
      //   hideStatus: _hideNavBar,
      //   onScreenHideButtonPressed: () {
      //     setState(() {
      //       _hideNavBar = !_hideNavBar;
      //     });
      //   },
      // ),
      // MainScreen(
      //   menuScreenContext: widget.menuScreenContext,
      //   hideStatus: _hideNavBar,
      //   onScreenHideButtonPressed: () {
      //     setState(() {
      //       _hideNavBar = !_hideNavBar;
      //     });
      //   },
      // ),
      // MainScreen(
      //   menuScreenContext: widget.menuScreenContext,
      //   hideStatus: _hideNavBar,
      //   onScreenHideButtonPressed: () {
      //     setState(() {
      //       _hideNavBar = !_hideNavBar;
      //     });
      //   },
      // ),
    ];
  }


List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        activeColor: Colors.blue[50],
        inactiveColor:Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.dashboard),
        activeColor: Colors.blue[200],
        inactiveColor:Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.receipt),
        activeColor: Colors.lightBlueAccent[100],
        inactiveColor: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        activeColor: Colors.deepOrange,
        inactiveColor: Colors.white,
      )];}
  @override
 
 
 Widget build(BuildContext context){
   return  PersistentTabView(
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
     backgroundColor: Color(0xFF4C7DA7), //Color(0xff6191BB),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      hideNavigationBar: _hideNavBar,
      decoration: NavBarDecoration(
          colorBehindNavBar: Colors.white,
          borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight: Radius.circular(15), )),
      popAllScreensOnTapOfSelectedTab: true,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 400),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
        NavBarStyle.style1,
          // NavBarStyle.style5, // Choose the nav bar style with this property
    );
  }
  
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
//   Widget build(BuildContext context) {
 
//     return Scaffold(
//       backgroundColor: Colors.white,
//        bottomNavigationBar: BottomNavigationBar(
//          elevation: 0,
        
//        //  type: BottomNavigationBarType.fixed,
//               items: [
//                 BottomNavigationBarItem(
//                   backgroundColor: Color(0xFF4C7DA7),
//                     icon: Icon(Icons.home,color: Colors.white,), title: Text("")),
//                 BottomNavigationBarItem(
//                     icon: Icon(Icons.dashboard), title: Text("")),
//                     BottomNavigationBarItem(
//                     icon: Icon(Icons.receipt), title: Text("")),
//                     BottomNavigationBarItem(
//                     icon: Icon(Icons.person), title: Text(""))
//               ],

//               //backgroundColor: Colors.red,
//               // content: Text("data")
//             ),
//       body: SafeArea(
//         minimum: EdgeInsets.symmetric(horizontal:25,vertical:10),
//         child: ListView(
          
//           children: <Widget>[
//             miainBord() , 
//               SizedBox(height:10),
//             Directionality(textDirection: TextDirection.rtl, child: 
//          Text(" وجبات ",style: TextStyle(
//            fontSize: 20,
//            color:Color(0xFF4C7DA7))),
//          ),
//          SizedBox(height:10),
//          breakFast(context),
//          SizedBox(height:20),   
//           luanch(context),
//           SizedBox(height:20), 
//           dinner(context),
//            SizedBox(height:20), 
//            snacks(context),
//             SizedBox(height:20), 
//             water(context)
//           ],
//       )),
//     );
//   }
// }