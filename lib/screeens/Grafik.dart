import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Grafik extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
  return GrafikState ();

  }

}

class GrafikState extends State {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Grafikler"
        ),
      ),

    );
  }

}
