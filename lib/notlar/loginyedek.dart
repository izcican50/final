/* yedek eski login
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'navigation.dart';

var assetImage=AssetImage('assets/logo.png');
var image=Image(image: assetImage,);

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  String username;
  String password;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              buildImage(),
              SizedBox(height: 5),
              TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(),
                    labelText: "Kullanıcı Adı"),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Kullanıcı Adı Giriniz";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  username = value;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigoAccent)),
                    labelText: "Şifre"),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Şifre  Giriniz";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  password = value;
                },
              ),
              buildLoginButton(),
              SizedBox(height: 300,),
              buildAltBilgi(),
            ],
          ),
        ),
      ),

    );
  }

  Widget buildLoginButton() {
    return MaterialButton(
      child: Text("         Giriş         ",style: TextStyle(
          fontSize: 20, color: Colors.white



      ),),

      onPressed: () {
        if (_formKey.currentState.validate()) {
          _formKey.currentState.save();

          if (username == "admin" && password == "12345") {


            Navigator.push(context,
              MaterialPageRoute(builder:
                  (context) => Navigation()),);


          } else {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Hata "),
                    content: Text("Giriş Bilgilerinizi Kontrol Edin"),
                  );
                });
          }
        }

      },
      color: Colors.blue,




    );
  }
  buildKarsilama(){

    return   ListTile(

      contentPadding: EdgeInsets.all(40),
      leading: Icon(Icons.whatshot_rounded,size: 36,   color: Colors.red,   ),
      title: Text("Admin Panel", style: TextStyle(fontSize: 24,fontWeight:FontWeight.bold ), ),
      subtitle: Text("ÜRÜN YÖNETİM SİSTEMİ ",style: TextStyle(color: Colors.white,fontSize: 20),),
      tileColor: Colors.grey,
    );

  }
  buildImage(){
    return Center(

      child: Container(
        padding: EdgeInsets.only(top: 70),
        height: 300,
          width: 500,alignment: Alignment(0.9,-0.98),
        child: image,
      ),
    );
  }

  buildAltBilgi(){
    return Row(children: [
      Padding(padding: EdgeInsets.all(10)),
      Text("© Develop by Can  2021. Tüm Hakları Saklıdr.",)
    ],);
  }
}


 */