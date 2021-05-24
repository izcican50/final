import 'package:demos9/data/dbHelper.dart';
import 'package:demos9/models/product.dart';
import 'package:demos9/screeens/product_list.dart';
import 'package:flutter/material.dart';

class ProductAdd  extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
  return ProductAddState();
  }

}

class ProductAddState  extends State{

  var dbHelper=DbHelper();
  var txtName=TextEditingController();
  var txtDescription=TextEditingController();
  var txtUnitPrice=TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Yeni Ürün ekle"),
     ),
     body: Padding(
       padding: EdgeInsets.all(30.0),
       child: Column(
         children:<Widget> [
           buildNameField(), buildDescription(), buildUnitPrice(), buildMargin(), buildSaveButton()
         ],
       ),
     ),
   );
  }

  buildDescription() {
    return TextField(
      decoration: InputDecoration(labelText: "Ürün Açıklaması"),
      controller: txtDescription,
    );
  }

  buildUnitPrice() {
    return TextField(
      decoration: InputDecoration(labelText: "Birim fiyati"),
      controller: txtUnitPrice,
    );
  }

  buildNameField() {
    return TextField(
      decoration: InputDecoration(labelText: "Ürün Adi"),
      controller: txtName,
    );
  }

  buildMargin() {
    return Padding(
      padding: EdgeInsets.only(top:25.0),
    );
  }

  buildSaveButton() {
    return Row(
      children: [
        // ignore: deprecated_member_use
        FlatButton(
          padding: EdgeInsets.only(right: 30,left: 30),
          child: Text("Ekle", style: TextStyle(
            fontSize: 16,
            color: Colors.white
          ), ),
          color: Colors.blue,
          onPressed: (){
            addProduct();

          },
        ),
      ],
    );
  }

  void addProduct() async {
  await dbHelper.insert(Product (name:txtName.text,description:txtDescription.text, unitPrice:double.tryParse(txtUnitPrice.text)));
  //  var result= await dbHelper.insert(Product (name:txtName.text,description:txtDescription.text, unitPrice:double.tryParse(txtUnitPrice.text)));  // result kullanılmıyor diye onu devre dışı bıraktım problem çıkarsa tekrar devreye al
   //Navigator.pop(context,true);

   Navigator.push(context,
     MaterialPageRoute(builder:(context)=>ProductList()));


  }

}