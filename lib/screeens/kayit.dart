import 'login.dart';


import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Kayit extends StatefulWidget {
  @override
  _KayitState createState() => _KayitState();
}

class _KayitState extends State<Kayit> {
  final myEmailController = TextEditingController();
  final myPasswordController = TextEditingController();
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  void dispose() {
    myEmailController.dispose();
    myPasswordController.dispose();
    super.dispose();
  }
  Future<void> kaydol () async {
    await Firebase.initializeApp();
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
        email: myEmailController.text,
        password: myPasswordController.text)
        .then((kullanici) {
      FirebaseFirestore.instance.collection("kullaniclar")
          .doc(myEmailController.text)
          .set({'eposta':myEmailController.text,
        'sifre':myPasswordController.text}).whenComplete(() => print("Kullanıcı Firebase veritabanına eklendi"));
    }).whenComplete(() => print("Kullanıcı Firebase'e Kaydadildi"));
  }
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      controller: myEmailController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "E-Posta Giriniz...",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.horizontal())),
    );
    final passwordField = TextField(
      controller: myPasswordController,
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Şifre Giriniz...",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.horizontal())),
    );

    final kayitButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.horizontal(),
      color: Colors.lightGreen,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        // onPressed: () {},
        onPressed: () {
          var email = myEmailController.text;
          var password = myPasswordController.text;
          bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
          bool passwordValid = RegExp(r'^.*(?=.{7,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9]).*$').hasMatch(password);
          if (!emailValid)
          {
            Fluttertoast.showToast(
                msg: "Hatalı E-mail Adresi Girdiniz.",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 2,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          }else if (!passwordValid)
          {
            Fluttertoast.showToast(
                msg: "Hatalı Şifre Girdiniz.",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 2,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          } else
          {
            kaydol();
            var data = [];
            data.add(email);
            data.add(password);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login(),
                settings: RouteSettings(
                  arguments: data,



                ),

              ),
            );
          }
        },
        child: Text("Kullanıcı Ekle",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Kullanıcı Ekle'),
      ),


      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            buildListTile2(),



                SizedBox(height: 10.0),
                emailField,
                SizedBox(height: 10.0),
                passwordField,
                SizedBox(
                  height: 10.0,
                ),
                kayitButon,
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

buildListTile2(){
  return ListTile(
    contentPadding: EdgeInsets.all(10),
    leading: Icon(Icons.add,size: 50, color: Colors.redAccent,),
    title: Text("Firebase Veritabanına Kullanıcı Ekleme İşlemi Gerçekleştirilmektedir.", style: TextStyle(fontSize: 24),),
    subtitle: Text("Yeni Kullanıcı Eklemek İçin E-posta ve Şifre Belirleyiniz  ",
      style: TextStyle(
          fontSize: 16
      ),),
  );
}