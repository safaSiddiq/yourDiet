// import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

import 'package:percent_indicator/percent_indicator.dart';


Widget miainBord(){
 final GlobalKey<AnimatedCircularChartState> _chartKey =  GlobalKey<AnimatedCircularChartState>();
  
  List<CircularStackEntry> data = <CircularStackEntry>[
   CircularStackEntry(
    <CircularSegmentEntry>[
       CircularSegmentEntry(500.0, Colors.red[200], rankKey: 'Q1'),
       CircularSegmentEntry(1000.0, Colors.green[200], rankKey: 'Q2'),
       CircularSegmentEntry(2000.0, Colors.blue[200], rankKey: 'Q3'),
      // CircularSegmentEntry(1000.0, Colors.yellow[200], rankKey: 'Q4'),
    ],
    rankKey: 'Quarterly Profits',
  ),
];
  
 

  final color = LinearGradient(
    begin: FractionalOffset.topCenter,
    stops: [
      0.0,
      1.0,
    ],
    colors: [Color(0xFF1BEC61), 
    Color(0xFF5BEE82)],
  );



  return Container(
   // height: 100,
    padding: EdgeInsets.symmetric(horizontal:10,vertical :5),
    
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: color
    ),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
      children:<Widget>[
        // CircularPercentIndicator(
        //           radius: 100.0,
        //           lineWidth: 50.0,
        //           percent: 1.0,
        //           center:  Text("100%"),
        //           progressColor: Colors.red,
        //         ),
      AnimatedCircularChart(
    key: _chartKey,
    size: Size(250.0, 250.0),
    holeRadius: 50,
    initialChartData: data,
    holeLabel: "         1230" "\n" "  سعرة حرارية",
    labelStyle: TextStyle(color:Colors.white,fontFamily: "Tajawal-Medium",
    fontSize: 16),
   // percentageValues: true,
    chartType: CircularChartType.Radial,
  ),
 // SizedBox(height:5),
  Row(children: <Widget>[
    _fat(),
    _carb(),
    _poroten()
  ],)
 
 
  
            //    checkToShowHorizontalLine: (value) => value % 5 == 0,
             //   getDrawingHorizontalLine: (value) {
                 
              //   FlLine(color: const Color(0xff363753), strokeWidth: 3);
               //  } )
    // gridData: FlGridData(
    //             show: true,
    //             checkToShowHorizontalLine: (value) => value % 5 == 0,
    //             getDrawingHorizontalLine: (value) {
    //               if (value == 0) {
    //                 return FlLine(color: const Color(0xff363753), strokeWidth: 3);
    //               }
    //               return FlLine(
    //                 color: const Color(0xff2a2747),
    //                 strokeWidth: 0.8,
    //               );
    //     
  ]
    )
  );
}

Widget _fat(){
  return Column(
    children:<Widget> [
     Text("دهون",style: TextStyle(color:Colors.white)),
     SizedBox(height:5),
     LinearPercentIndicator(
   width:100,
   lineHeight: 5,
   percent: 0.5,
   backgroundColor: Colors.white,
   progressColor: Colors.deepOrange,
 ),  SizedBox(height:10),
    ],
  );
}

Widget _carb(){
  return Column(
    children:<Widget> [
     Text("كربوهيدرات",style: TextStyle(color:Colors.white),),
     SizedBox(height:5),
     LinearPercentIndicator(
   width:100,
   lineHeight: 5,
   percent: 0.5,
   backgroundColor: Colors.white,
   progressColor: Colors.deepOrange,
 ),
   SizedBox(height:10),
    ],
  );
}
Widget _poroten(){
  return Column(
    children:<Widget> [
     Text("بروتين",style: TextStyle(color:Colors.white)),
     SizedBox(height:5),
     LinearPercentIndicator(
   width:90,
   lineHeight: 5,
   percent: 0.5,
   backgroundColor: Colors.white,
   progressColor: Colors.deepOrange,
 ),
  SizedBox(height:10),
    ],
  );
}