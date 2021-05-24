import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart'  as http ;

class MusteriApi extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return MusteriApiState ();
  }


}

class MusteriApiState extends State {
  Map data;
  List productsData;

  getProducts() async {
    http.Response response=await http.get(Uri.parse('https://raw.githubusercontent.com/izcican50/canweb3/master/db3.json'));
    data=jsonDecode(response.body);
    setState(() {
      productsData=data['customers'];

    });



  }
  @override
  void initState() {

    super.initState();
    getProducts();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Musteri İletişim Bilgileri Api"),
      ),
      body: ListView.builder(
        itemCount: productsData==null ? 0:productsData.length,
        itemBuilder: (BuildContext context, int index){
          return Card(
            child:Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                  ),
                  Text("$index",style: TextStyle(fontSize: 20.0,
                      fontWeight: FontWeight.w500),),
                  CircleAvatar(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("${productsData[index]["customerName"] }"),


                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("${productsData[index]["phone"] }"),


                  )
                ],
              ),
            ) ,
          );
        },
      ),
    );
  }
}