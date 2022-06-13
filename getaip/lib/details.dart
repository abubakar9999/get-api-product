import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:getaip/model.dart';

class Detelse extends StatelessWidget {
  ProductModel? productModel;
  Detelse({Key? key, this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${productModel!.category}'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                child: Image.network(
                  productModel!.image.toString(),
                  height: MediaQuery.of(context).size.height / 3,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Container(
                  width: 50,
                  child: Text(
                    "Price: ${productModel!.price}৳",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                title: Container(
                  width: 300,
                  child: Text(
                    "${productModel!.title}",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                trailing: Container(
                  width: 50,
                  child: Text(
                    "${productModel!.rating!.rate}⭐",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Text(
              "${productModel!.description}",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
