/* float action button kullanımı ve column içinde birden fazla metin
import 'package:flutter/material.dart';

class  Communucation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return CommunucationState ();
  }

}

class CommunucationState extends State {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.deepPurpleAccent,
        title: Text("İletişim"),

      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Adres",style: TextStyle(fontSize: 25, ),),
          Text("Adres:Akabe Mah. Şehit Hüseyin Ceran Sok. No:51 A Blok  Karatay Konya",style: TextStyle(fontSize: 20,) ,),

        ],
      ),),
      floatingActionButton:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {},
              child: Icon(Icons.add)),
          FloatingActionButton(onPressed: () {},
              child: Icon(Icons.add)),

        ],
      ) ,


    );

  }
}

*/