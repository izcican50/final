



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about2.dart';
import 'musteriapi.dart';




class About extends StatefulWidget {



  @override
  State<StatefulWidget> createState() {

    return AboutState ();
  }

}

class AboutState extends State {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: (
            Text("Hakkımızda")
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          SizedBox(height: 10,),

          buildListTile(),
          buildListMusteri(),


          buildReferansButton(),


          buildSnackBar(),


        ],
      ),

    );
  }

  buildSnackBar(){
    return ElevatedButton(
      child: Text("Daha Fazlası için..."),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            action: SnackBarAction(
              label: "",
              onPressed: () {
                // Code to execute.
              },
            ),
            content: Text("Daha fazlası için www.urunyonetim.com adresindeki sitemiz ziyaret edin !"),
            duration: Duration(milliseconds: 3500),
            width: 280.0, // Width of the SnackBar.
            padding: EdgeInsets.all(15
            ), // Inner padding for SnackBar content.
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        );
      },
    );
  }
  buildListTile(){
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      leading: Icon(Icons.all_inclusive_outlined,size: 40, color: Colors.green,),
      title: Text("Hakkımızda:", style: TextStyle(fontSize: 20),),
      subtitle: Text("Mobil Programalam dersi kapsamında gerçekleştirdiğimiz ilk proje olan Ürün Yönetim Sistemi, 2021 yılı itibariyle faaliyete geçecektir.Ürün kaydı, güncelleme, silme gibi temel işlevlerin gerçekleştirleceği projede stok takip, kullanıcı yönetimi gibi bölümlerde olacaktır "
        ,style: TextStyle(
            fontSize: 16,
                fontFamily: 'Roboto'
        ),),
    );
  }

  buildListTile2(){
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      leading: Icon(Icons.account_circle_sharp,size: 40, color: Colors.redAccent,),
      title: Text("Öğrenci Hakkında:", style: TextStyle(fontSize: 20),),
      subtitle: Text("Selçuk Üniversitesi 3.sınıf öğrencisi Can İZCİ, aynı zamanda Konya İl Milli Eğitim Müdürlüğü 'nde kamu personeli olarak görev yapmakta olup evli ve 2 çocuk babasıdır.Öğrencimiz aynı zamanda Marmara Üniversitesi Bilgisayar Öğretmenliği mezunudur. ",
        style: TextStyle(
            fontSize: 16
        ),),
    );
  }



  buildimage(){
    return Container(
      padding: const EdgeInsets.all(8),
      child: const Image(
        image: NetworkImage(''),
      ),

      color: Colors.grey,
    );
  }

  buildReferansButton() {
    return MaterialButton(
      padding: EdgeInsets.only(left: 50, right: 40),
      child: Text(
        "Referanslar",
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
      minWidth: 50,
    );
  }

  buildListMusteri(){
  return   ListTile(
    contentPadding: EdgeInsets.all(10),
    leading: Icon(Icons.assignment,size: 40,),
    title: Text("Musteri Bigileri", style: TextStyle(fontSize: 20),),
    subtitle: Text("Api Dosyasından Müsteri Bilgileri"),
    onTap: (){

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MusteriApi() ),
      );
    },
  );
  }
}