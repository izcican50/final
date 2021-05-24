import 'package:demos9/data/dbHelper.dart';
import 'package:demos9/models/product.dart';
import 'package:demos9/screeens/navigation.dart';
import 'package:demos9/screeens/product_add.dart';

import 'package:demos9/screeens/product_detail_update.dart';
import 'package:flutter/material.dart';

class ProductListUpdate extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _ProductListUpdateState();
  }

}

class _ProductListUpdateState extends State {

  var dbhelper=DbHelper();
  List<Product> products;
  int productCount=0;

  @override
  void initState() {
    getProducts();
    super.initState();  //sonradan ekledim hataya binaen

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Güncellenecek Ürün Listesi"),
        backgroundColor: Colors.green,
      ),


      body:  buildProductList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder:(context)=>Navigation()));
        },
        child: Icon(Icons.home),
        tooltip: "Ana Sayfa",
        backgroundColor: Colors.green,

      ),


    );


  }






  ListView buildProductList() {
    return ListView.builder(
        itemCount: productCount,
        itemBuilder: (BuildContext context,int position) {
          return Card(
            color: Colors.grey[100],

            elevation: 2.0,
            child: ListTile(
              leading:CircleAvatar(backgroundColor: Colors.black12,child: Text("p"
                ,),) ,
              title: Text(this.products[position].name, style: TextStyle(
                  color: Colors.black
              ),),
              subtitle: Text(this.products[position].description),
              onTap: () {gotoDetail(this.products[position]);},
            ),
          );
        });
  }

  void gotoProductAdd() async {
    bool result= await Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductAdd()));
    if (result !=null) {
      if(result) {
        getProducts();
      }
    }
  }

  void getProducts() async {
    var productsFuture=dbhelper.getProducts();
    productsFuture.then((data){

      setState(() {
        this.products=data;
        productCount=data.length;
      });

    });
  }

  void gotoDetail(Product product) async {
    bool result=await Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailUpdate(product)));

    if (result !=null){
      if(result) {
        getProducts();
      }
    }
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


