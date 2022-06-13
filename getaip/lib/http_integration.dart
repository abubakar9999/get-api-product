import 'dart:convert';

import 'package:getaip/model.dart';
import 'package:http/http.dart' as http;

List<ProductModel> ourdata = [];
late ProductModel productModel;

getData() async {
  var respons = await http.get(Uri.parse("https://fakestoreapi.com/products"));

  print(respons.body);

  if (respons.statusCode == 200) {
    var data = jsonDecode(respons.body);

    for (var item in data) {
      productModel = ProductModel.fromJson(item);
      ourdata.add(productModel);
    }
  }
  return ourdata;
}
