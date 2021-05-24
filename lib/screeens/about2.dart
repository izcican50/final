import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigation.dart';
// Sayfada genel olarak asset image ile gesture kullanımına daire örnekler mevcut

var assetImage2 = AssetImage('assets/konyamem.jpg');
var imagekonyamem = Image(
  image: assetImage2,
);

var assetImage5 = AssetImage('assets/konyateknik.png');
var imagekonyateknik = Image(
  image: assetImage5,
);


var assetImage3 = AssetImage('assets/btakademi.png');
var imagebtakademi = Image(
  image: assetImage3,
);

var assetImage4 = AssetImage('assets/tflogo.png');
var imagetflogo = Image(
  image: assetImage4,
);

class About2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return About2State();
  }
}

// ignore: must_be_immutable
class GestureReferans extends StatelessWidget {
  String yazi="Kurumlarımız";
  String yazibuyuk="KURUMLARIMIZ";
  @override
  Widget build(BuildContext context) {

    return new GestureDetector(

      child: Container(
        padding:const EdgeInsets.only(left: 100,right: 100),
        color: Colors.grey,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: new  GestureDetector(
                  onTap: () {
                    
                  },
                  child: Text(
                      yazi,
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.grey,
                child: new GestureDetector(
                  child: Container(
                    child: imagetflogo,
                  ),
                  onTap: () {

                    // ignore: deprecated_member_use
                    Scaffold.of(context).showSnackBar(
                        new SnackBar(content: new Text("wwww.selcuk.edu.tr")));
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.grey,
                child: new GestureDetector(
                  child: Container(
                    child: imagebtakademi,
                  ),
                  onDoubleTap: () {

                    // ignore: deprecated_member_use
                    Scaffold.of(context).showSnackBar(
                        new SnackBar(content: new Text("wwww.btakademi.org.tr")));
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.grey,
                child: new GestureDetector(
                  child: Container(
                    child: imagekonyamem,
                  ),
                  onLongPress: () {

                    // ignore: deprecated_member_use
                    Scaffold.of(context).showSnackBar(
                        new SnackBar(content: new Text("wwww.konyamem.meb.gov.tr")));
                  },
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.grey,
                child: new GestureDetector(
                  child: Container(
                    child: imagekonyateknik,
                  ),
                  onTapDown: (e) {

                    // ignore: deprecated_member_use
                    Scaffold.of(context).showSnackBar(
                        new SnackBar(content: new Text(e.toString()+'www.konyateknik.meb.gov.tr')));
                  },
                ),
              ),
            ),



          ],
        ),
      ),


    );

  }


}

class About2State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text("Referanslar ")),
      ),
      body: new GestureReferans(),

    );
  }

  buildSnackBar() {
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
            content: Text(
                "Daha fazlası için www.urunyonetim.com adresindeki sitemiz ziyaret edin !"),
            duration: Duration(milliseconds: 3500),
            width: 280.0, // Width of the SnackBar.
            padding: EdgeInsets.all(15), // Inner padding for SnackBar content.
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        );
      },
    );
  }

  buildListTile() {
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      leading: Icon(
        Icons.all_inclusive_outlined,
        size: 40,
        color: Colors.green,
      ),
      title: Text(
        "Hakkımızda:",
        style: TextStyle(fontSize: 20),
      ),
      subtitle: Text(
        "Mobil Programalam dersi kapsamında gerçekleştirdiğimiz ilk proje olan Ürün Yönetim Sistemi, 2021 yılı itibariyle faaliyete geçecektir.Ürün kaydı, güncelleme, silme gibi temel işlevlerin gerçekleştirleceği projede stok takip, kullanıcı yönetimi gibi bölümlerde olacaktır ",
        style: TextStyle(fontSize: 16, fontFamily: 'Roboto'),
      ),
    );
  }

  buildListTile2() {
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      leading: Icon(
        Icons.account_circle_sharp,
        size: 40,
        color: Colors.redAccent,
      ),
      title: Text(
        "Öğrenci Hakkında:",
        style: TextStyle(fontSize: 20),
      ),
      subtitle: Text(
        "Selçuk Üniversitesi 3.sınıf öğrencisi Can İZCİ, aynı zamanda Konya İl Milli Eğitim Müdürlüğü 'nde kamu personeli olarak görev yapmakta olup evli ve 2 çocuk babasıdır.Öğrencimiz aynı zamanda Marmara Üniversitesi Bilgisayar Öğretmenliği mezunudur. ",
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  buildimage() {
    return Container(
      padding: const EdgeInsets.all(8),
      child: const Image(
        image: NetworkImage('https://r.resimlink.com/FM83.jpg'),
      ),
      color: Colors.grey,
    );
  }

  buildHomePage() {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder:(context)=>Navigation()));
      },
      child: Icon(Icons.home),
      tooltip: "Ana Sayfa",
    );
  }
}
