/*    main sayfası
import 'package:demos9/screeens/navigation.dart';
import 'package:demos9/screeens/product_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: MaterialApp(
       // home: ProductList(),
        home:Navigation(),
      ),
    );

  }
}

 */
///////////////////////  alternatif main sayfası 2

/*
import 'package:flutter/material.dart';

import 'navigation.dart';

void main(){

  runApp(MaterialApp(
    title: "Navigasyon Sayfası",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    home: Navigation(),

  ));
}
 */
/////////////////////////////////////////////////////////////
/* NAVİGASYON SAYFASI

import 'package:flutter/material.dart';

import 'asayfasi.dart';


class Navigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return NavigationState ();

  }


}

class NavigationState extends State {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Navigasyon İşlemleri",
      style: TextStyle(color: Colors.white),),
    ),

    body: Column(
      children:<Widget> [
      RaisedButton(child:
        Text("A sayfasına git"),
      color:Colors.blue ,
      onPressed:() {
        Navigator.push(context,
        MaterialPageRoute(builder:
        (context)=>Asayfasi()),);
      },)
      ],
    ),

  );

  }
}

 */
/////////////////////////////////////////////////
/*
YÖNLENDİRİLEN A SAYFASI

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
 */
///////////////////////////////////////////
//Listeleyip yönlendiren buton
/*
  buildList() {
    return Row(
      children: [
        // ignore: deprecated_member_use
        FlatButton(
          child: Text("Ürünleri Listele"),
          color: Colors.amber,
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder:
                  (context)=>ProductList()),);
          },
        ),
      ],
    );
  }
 */
///////////// padddin orneğgi
/*
return Scaffold(
      appBar: AppBar(
        title: Text("Yeni Ürün Ekle"),
      ),
 body: Padding(
      padding: EdgeInsets.all(30.0),
        child: Column(
          children:<Widget> [
 */
//// body cennter yazı için deneme about sayfası için
/*
     body: Center(
          child: Text("Bu program Selçuk Üniversitesi Teknoloji Fakültesi Bilgisayar Mühendisliği bölümü, Mobil Programlama dersi kapsamında  Can İZCİ tarafından gerçekleştirilmiştir ! ",style:
            TextStyle(
              fontSize: 16.0,

              color: Colors.black
            ),),

        ),
 */
//NAVİGASYON SON HALİ ÇALIŞMAYABİLİR AMA STİL İŞİNE YARAYABİLR
/*
import 'package:demos9/screeens/about.dart';
import 'package:demos9/screeens/product_add.dart';
import 'package:demos9/screeens/product_list.dart';
import 'package:flutter/material.dart';




class Navigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return NavigationState ();

  }


}

class NavigationState extends State {

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: Text("Ana Sayfa",


      style: TextStyle(color: Colors.white
      ),),
      backgroundColor: Colors.redAccent,
    ),

    body: Padding(

        padding: EdgeInsets.only(top:80),

      child: Column(

      children:<Widget> [

        buildAddProduct(),
        buildMargin(),
        buildList(),
        buildMargin(),
        buildAbout()




      ],
    ),
    )


  );

  }

  buildList() {
    return Center(


       // ignore: deprecated_member_use
       child: RaisedButton(
          padding: EdgeInsets.all(40),
          child: Text(" Ürün Listele ",
          style: TextStyle(
            fontSize: 16.0,
            letterSpacing: 2.0,
            color: Colors.white

          ),),
          color: Colors.grey,



          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder:
                  (context)=>ProductList()),);
          },

        ),

    );
  }

  buildMargin() {
 return Padding(
   padding: EdgeInsets.only(top:25.0),
 );
  }

  buildAddProduct() {
    return Center(
        // ignore: deprecated_member_use
       child: RaisedButton(
          padding: EdgeInsets.all(40),
          child: Text("  Ürün Ekle   ",
         style: TextStyle(
           fontSize: 16.0,
           letterSpacing: 2.0,
           color:Colors.white
         ), ),
          color: Colors.blue,

          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder:
                  (context)=>ProductAdd()),);
          },
        ),

    );
  }

  buildAbout() {
    return Center(
      // ignore: deprecated_member_use
      child: RaisedButton(
        padding: EdgeInsets.all(40),
        child: Text("  Hakkımızda  ",
          style: TextStyle(
              fontSize: 16.0,
              letterSpacing: 2.0,
              color:Colors.white
          ), ),
        color: Colors.redAccent,

        onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(builder:
                (context)=>About()),);
        },
      ),

    );
  }

}
 */