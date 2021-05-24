import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file_utilities.dart';
import 'navigation.dart';
class Dosya extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DosyaState ();
  }

}

class DosyaState extends State<StatefulWidget> {
  String fileContents="Mesaj  Boş";
  final myController=TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Dosya İslemleri"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[


          TextField(

     decoration: InputDecoration(

          border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.indigoAccent), ),
    labelText: "Mesaj Yazın"),

    maxLines: 5,
    controller:myController ,



          ),

          SizedBox(height: 50,),

          MaterialButton(
            color: Colors.green,
            child: Text("Mesajı Kaydet", style: TextStyle(fontSize: 20,color: Colors.white

            ),),
            onPressed: () {
            FileUtils.savetoFile(myController.text);
            },
          ),
          MaterialButton(
            color: Colors.cyan,
            child: Text("Mesajı Gönder ve Oku", style: TextStyle(fontSize: 20,color: Colors.white),),
            onPressed: () {
              FileUtils.readFromFile().then((contents) {
                setState(() {
                  fileContents=contents;

                  showDialog(
                  context: context,
    builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Mesaj "),
                      content: Text("Mesajınız İnsan Kaynakları Birimine Gönderildi !"),
                    );
                  }
               );
                });
              });
            },
          ),
          Text("Mesaj İçeriği",style: TextStyle(fontSize: 24, ),),
          Text(fileContents),
          SizedBox(height: 40,),
          buildTest(),


        ],
      )
    );

  }

  buildTest() {
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

