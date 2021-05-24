import 'package:demos9/screeens/about.dart';
import 'package:demos9/screeens/communucation.dart';
import 'package:demos9/screeens/kayit.dart';

import 'package:demos9/screeens/login.dart';


import 'package:demos9/screeens/product_add.dart';
import 'package:demos9/screeens/product_list.dart';
import 'package:demos9/screeens/product_list_delete.dart';
import 'package:demos9/screeens/product_list_update.dart';

import 'package:demos9/screeens/workingtime.dart';
import 'package:flutter/material.dart';

import 'about2.dart';


import 'dosya.dart';


var assetImage=AssetImage('assets/logo.png');
var image=Image(image: assetImage,);

class Navigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationState();
  }
}

class NavigationState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnaSayfa"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

         buildImage(),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildAddProduct(),
              SizedBox(
                width: 5,
              ),
              buildListDelete(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildListUpdate(),
              SizedBox(
                width: 5,
              ),
              buildList(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildAbout(),
              SizedBox(
                width: 5,
              ),
              buildCommunucation(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildTest(),
              SizedBox(
                width: 5,
              ),
              buildExit(),
            ],
          ),





        ],
      ),
    );
  }

  buildAddProduct() {
    return MaterialButton(
      child: Text(
        "  Ürün Ekle   ",
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
      color: Colors.blue,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductAdd()),
        );
      },
      height: 40,
      minWidth: 200,
    );
  }

  buildListDelete() {
    return MaterialButton(
      child: Text(
        " Ürün Sil ",
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
      color: Colors.redAccent,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductListDelete()),
        );
      },
      height: 40,
      minWidth: 200,
    );
  }

  buildListUpdate() {
    return MaterialButton(
      child: Text(
        " Ürün Güncelle ",
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
      color: Colors.green,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductListUpdate()),
        );
      },
      height: 40,
      minWidth: 200,
    );
  }

  buildList() {
    return MaterialButton(
      child: Text(
        " Ürün Listele ",
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
      color: Colors.deepOrange,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductList()),
        );
      },
      height: 40,
      minWidth: 200,
    );
  }

  buildAbout() {
    return MaterialButton(
      padding: EdgeInsets.only(left: 50, right: 45),
      child: Text(
        "  Hakkımızda  ",
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
      color: Colors.deepPurpleAccent,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => About()),
        );
      },
      height: 40,
      minWidth: 200,
    );
  }
  buildCommunucation() {
    return MaterialButton(
      padding: EdgeInsets.only(left: 50, right: 45),
      child: Text(
        "  İletişim  ",
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
      color: Colors.cyan,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Communucation()),
        );
      },
      height: 40,
      minWidth: 200,
    );
  }

  buildExit() {
    return MaterialButton(
      padding: EdgeInsets.only(left: 50, right: 45),
      child: Text(
        "Çıkış",
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
      color: Colors.red,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
      },
      height: 40,
      minWidth: 200,
    );
  }
  buildAnaText(){

    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ListTile(

          contentPadding: EdgeInsets.all(40),
          leading: Icon(Icons.whatshot_rounded,size: 36,   color: Colors.red,   ),
          title: Text("Admin Panel", style: TextStyle(fontSize: 24,fontWeight:FontWeight.bold ,fontFamily: 'Combo'),  ),
          subtitle: Text("ÜRÜN YÖNETİM SİSTEMİ ",style: TextStyle(color: Colors.white,fontSize: 20, fontFamily: 'Combo'
          ),),
          tileColor: Colors.grey,
        )


      ],
    );
  }

  buildAltBilgi2(){
    return Row(children: [
      Padding(padding: EdgeInsets.all(10)),
      Text("© ", style: TextStyle(fontSize: 16),),
      Text(" Develop by Can 2021 Tüm Hakları Saklıdır."),

    ],);
  }

  buildTest() {
    return MaterialButton(
      padding: EdgeInsets.only(left: 50, right: 40),
      child: Text(
        "Kullanıcı  İşl.",
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
      color: Colors.orange,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Kayit()),
        );
      },
      height: 40,
      minWidth: 200,
    );
  }

  buildImage(){
    return Center(

      child: Container(

        height: 200,
        width: 500,
        child: image,
      ),

    );
  }

  buildGesture() {
    return MaterialButton(
      padding: EdgeInsets.only(left: 50, right: 40),
      child: Text(
        "Gesture.",
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
      color: Colors.orange,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => About2()),
        );
      },
      height: 40,
      minWidth: 200,
    );
  }

  buildDosyaButon() {
    return MaterialButton(
      padding: EdgeInsets.only(left: 50, right: 40),
      child: Text(
        "Dosya İşlemleri.",
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
      color: Colors.orange,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Dosya()),
        );
      },
      height: 40,
      minWidth: 200,
    );
  }

  buildLoginAnimation() {
    return MaterialButton(
      padding: EdgeInsets.only(left: 50, right: 40),
      child: Text(
        " Animation  .",
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
      color: Colors.orange,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WorkingTimeAnimation()),
        );
      },
      height: 40,
      minWidth: 200,
    );
  }

}
