import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gesture extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

      return GestureState ();
  }

}

class GestureState extends State {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(
      title: Text("Gesture Islemleri"),
    ),
     body: new Center(
       child:GestureDetector (
         onTap: () {
           print("Tıklandı");
         },
         onDoubleTap: (
         ) {
           print("çift");
         },
         onLongPress: () {
           print("Uzun Tıklandı");
         },
         child: Container(

           height: 70.0, 
             width: 100,
           padding: EdgeInsets.all(10),
           decoration:BoxDecoration(
             color: Colors.blue,
             borderRadius: BorderRadius.circular(15.0),
           ),
           child: Text("Bana Tıkla"),
         ),
       ),
     ),
    );
  }
}