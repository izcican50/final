import 'package:demos9/data/dbHelper.dart';
import 'package:demos9/models/product.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductDetailDelete extends StatefulWidget {
  Product product;
  ProductDetailDelete(this.product);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductDetailDeleteState(product);
  }
}

enum Options { delete, update }

class _ProductDetailDeleteState extends State {
  Product product;
  _ProductDetailDeleteState(this.product);

  var dbhelper = DbHelper();

  var txtName = TextEditingController();
  var txtDescription = TextEditingController();
  var txtUnitPrice = TextEditingController();

  @override
  void initState() {
    txtName.text = product.name;
    txtDescription.text = product.description;
    txtUnitPrice.text = product.unitPrice.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ürün Sil :${product.name} "),
        backgroundColor: Colors.red,
        actions: <Widget>[
          PopupMenuButton<Options>(
            onSelected: selectProcess,
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Options>>[

              PopupMenuItem<Options>(
                value: Options.delete,
                child: Text("Sil"),
              )
            ],
          )
        ],
      ),
      body: buildProductDetail(),
    );
  }

  buildProductDetail() {
    return Padding(
      padding: EdgeInsets.all(30.0),
      child: Column(
        children: <Widget>[
          buildNameField(),
          buildDescription(),
          buildUnitPrice(),
        ],
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
      decoration: InputDecoration(labelText: "birim fiyati"),
      controller: txtUnitPrice,
    );
  }

  buildNameField() {
    return TextField(
      decoration: InputDecoration(labelText: "Ürün Adi"),
      controller: txtName,
    );
  }

  void selectProcess(Options options) async {
    switch (options) {
      case Options.delete:
        await dbhelper.delete((product.id));
        Navigator.pop(context, true);
        break;

      case Options.update:
        await dbhelper.update((Product.withId(
            id: product.id,
            name: txtName.text,
            description: txtDescription.text,
            unitPrice: double.tryParse(txtUnitPrice.text))));
        Navigator.pop(context, true);
        break;
      default:
    }
  }
}
