import 'package:flutter/material.dart';

class Asayfasi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return AsayfasiState ();
  }

}

class AsayfasiState extends State {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("A sayfasi App Bar",
          style: TextStyle(color: Colors.yellow),),
      ),
      body: Column(
        children:<Widget> [
          Text("A SAYFASINA HOŞGELDİNİZ")
        ],
      ),

    );
  }

}