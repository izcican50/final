import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigation.dart';
// Sayfada genel olarak asset image ile gesture kullanımına daire örnekler mevcut

var assetImage2 = AssetImage('assets/konyamem.jpg');
var imagekonyamem = Image(
  image: assetImage2,
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
  String yazi="can";
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: new Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(

                child: GestureDetector(
                  onTap: () {

                  },
                  child: Text(
                    "Kurumlarımız",
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),
              ),





            ],
          ),
          Container(
            color: Colors.orange,
            alignment: Alignment.center,
            height: 100,
            width: 200,
            child: imagetflogo,
          ),
          Container(
            color: Colors.blue,
            alignment: Alignment.bottomCenter,
            height: 100,
            width: 200,
            child: imagebtakademi,
          ),
          Container(
            color: Colors.cyan,
            alignment: Alignment.bottomCenter,
            height: 100,
            width: 200,
            child: imagekonyamem,
          ),

          Container(
            child: GestureDetector(
              onTap: () {
                // ignore: deprecated_member_use
                Scaffold.of(context).showSnackBar(
                    new SnackBar(content: new Text("Daha Fazlası için sitemizi tıklayın")));
              },
              child: MaterialButton(
                onPressed: () {

                },
                child: Text(
                  "Daha Fazlası İçin..",
                  style: TextStyle(fontSize: 16.0, color: Colors.white),

                ),
                color: Colors.blue,

              ),


            ),
          ),


        ],

      ),
      onTap: () {
        // ignore: deprecated_member_use
        Scaffold.of(context).showSnackBar(
            new SnackBar(content: new Text("wwww.selcuk.edu.tr")));
      },
      onDoubleTap: () {
        // ignore: deprecated_member_use
        Scaffold.of(context).showSnackBar(
            new SnackBar(content: new Text("www.btakademir.org")));
      },
      onLongPress: () {
        var showSnackBar = Scaffold.of(context).showSnackBar(
            new SnackBar(content: new Text("www.konyamem.meb.gov.tr")));
      },
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
