


import 'package:demos9/screeens/navigation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

var assetImage=AssetImage('assets/logo.png');
var image=Image(image: assetImage,);

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final myEmailController = TextEditingController();
  final myPasswordController = TextEditingController();
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  void dispose() {
    myEmailController.dispose();
    myPasswordController.dispose();
    super.dispose();
  }

  Future<void> girisYap () async {
    await Firebase.initializeApp();
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(
        email: myEmailController.text,
        password: myPasswordController.text)
        .then((kullanici) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => Navigation()),
              (Route<dynamic> route) => false);
    }).whenComplete(() => print("Kullanıcı Girişi Yapıldı"));
  }

  @override
  Widget build(BuildContext context) {


    final emailField = TextField(
      controller: myEmailController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email Giriniz..",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.horizontal())),
    );
    final passwordField = TextField(
      controller: myPasswordController,
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Şifre Giriniz..",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.horizontal())),
    );

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.horizontal(),
      color:Colors.redAccent,
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
            print( "Hatalı E-mail Adresi Girdiniz.");


          }else if (!passwordValid)
          {
            print( "Hatalı Şifre Girdiniz..");

          }
          else if(!emailValid && !passwordValid)
          {
            Fluttertoast.showToast(
                msg: "Kayıtlı Olmayan Eposta Adresi ve Şifre Girdiniz.Lütfen Kayıt Olunuz.",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 2,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          }
          else  {
            girisYap();
            var data = [];
            data.add(email);
            data.add(password);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Navigation(),
                settings: RouteSettings(
                  arguments: data,
                ),
              ),
            );
          }



        },
        child: Text("Giriş",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    /* başka ekrana aktardığım için bu ekranda pasife aldım
    final kayitButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.horizontal(),
      color: Colors.lightGreen,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        // onPressed: () {},
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Kayit(),
            ),
          );
        },
        child: Text("Kullanıcı Ekle",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

*/

    return Scaffold(

      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Ürün Yönetim Sistemi'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildImage(),


                emailField,
                SizedBox(height: 30.0),
                passwordField,
                SizedBox(
                  height: 30.0,
                ),
                loginButon,
                SizedBox(
                  height: 180.0,
                ),
                buildAltBilgi(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

buildImage(){
  return Center(

    child: Container(
      padding: EdgeInsets.only(top: 1),
      height: 200,
      width: 250,alignment: Alignment(0.9,-0.98),
      child: image,
    ),
  );
}

buildAltBilgi(){
  return Row(children: [
    Padding(padding: EdgeInsets.all(10)),
    Text("© Develop by Can  2021. Tüm Hakları Saklıdır.",)
  ],);
}
