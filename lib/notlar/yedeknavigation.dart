/*
import 'package:demos9/screeens/about.dart';
import 'package:demos9/screeens/communucation.dart';
import 'package:demos9/screeens/product_add.dart';
import 'package:demos9/screeens/product_list.dart';
import 'package:demos9/screeens/product_list_delete.dart';
import 'package:demos9/screeens/product_list_update.dart';
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

          padding: EdgeInsets.only(top: 10),

          child: Column(

            children: <Widget>[

              buildMargin(),
              buildMargin(),
              buildMargin(),
              buildAddProduct(),
              buildMargin(),
              buildList(),
              buildMargin(),
              buildListUpdate(),
              buildMargin(),
              buildListDelete(),
              buildMargin(),
              buildAbout(),
              buildMargin(),
              buildLogin(),
              buildMargin(),
              buildTest(),
              buildMargin(),
              buildMargin(),
              buildExit()




            ],
          ),
        )


    );
  }

  buildList() {
    return Center(


      // ignore: deprecated_member_use
      child: RaisedButton(
        padding: EdgeInsets.only(left: 50,right: 50),
        child: Text(" Ürün Listele ",
          style: TextStyle(
              fontSize: 16.0,
              letterSpacing: 2.0,
              color: Colors.white

          ),),
        color: Colors.deepOrange,


        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder:
                (context) => ProductList()),);
        },

      ),

    );
  }

  buildListUpdate() {
    return Center(


      // ignore: deprecated_member_use
      child: RaisedButton(
        padding: EdgeInsets.only(left: 40,right: 40),
        child: Text(" Ürün Güncelle ",
          style: TextStyle(
              fontSize: 16.0,
              letterSpacing: 2.0,
              color: Colors.white

          ),),
        color: Colors.green,


        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder:
                (context) => ProductListUpdate()),);
        },

      ),

    );
  }

  buildListDelete() {
    return Center(


      // ignore: deprecated_member_use
      child: RaisedButton(
        padding: EdgeInsets.only(left: 70,right: 70),
        child: Text(" Ürün Sil ",
          style: TextStyle(
              fontSize: 16.0,
              letterSpacing: 2.0,
              color: Colors.white

          ),),
        color: Colors.redAccent,


        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder:
                (context) => ProductListDelete()),);
        },

      ),

    );
  }


  buildMargin() {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
    );
  }

  buildAddProduct() {
    return Center(
      // ignore: deprecated_member_use
      child: FlatButton(
        padding: EdgeInsets.only(left: 55,right: 55),
        child: Text("  Ürün Ekle   ",
          style: TextStyle(
              fontSize: 16.0,
              letterSpacing: 2.0,
              color: Colors.white
          ),),
        color: Colors.blue,

        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder:
                (context) => ProductAdd()),);
        },
      ),

    );
  }

  buildAbout() {
    return Center(
      // ignore: deprecated_member_use
      child: RaisedButton(
        padding: EdgeInsets.only(left: 50,right: 45),
        child: Text("  Hakkımızda  ",
          style: TextStyle(
              fontSize: 16.0,
              letterSpacing: 2.0,
              color: Colors.white
          ),),
        color: Colors.deepPurpleAccent,

        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder:
                (context) => About()),);
        },
      ),

    );
  }

  buildLogin() {
    return Center(
      // ignore: deprecated_member_use
      child: RaisedButton(
        padding: EdgeInsets.only(left: 40,right: 40),
        child: Text("  Login Sayfası  ",
          style: TextStyle(
              fontSize: 16.0,
              letterSpacing: 2.0,
              color: Colors.white
          ),),
        color: Colors.redAccent,

        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder:
                (context) => Login()),);
        },
      ),

    );
  }

  buildTest() {
    return Center(
      // ignore: deprecated_member_use
      child: ElevatedButton(

        child: Text("          İletişim         ",

          style: TextStyle(
              fontSize: 16.0,
              letterSpacing: 2.0,
              color: Colors.white
          ),),


        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder:
                (context) => Communucation()),);
        },
      ),

    );
  }

  buildExit() {
    IconButton(icon: Icon(Icons.camera_alt), onPressed: () => {});
    IconButton(icon: Icon(Icons.account_circle), onPressed: () => {});
    return Center(
      // ignore: deprecated_member_use

      child: FloatingActionButton(
        child: Icon(Icons.settings_power_sharp),

        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,

        onPressed: () => {
          Navigator.push(context,
            MaterialPageRoute(builder:
                (context) => Login()),)
        },


      ),

    );
  }
}
 */