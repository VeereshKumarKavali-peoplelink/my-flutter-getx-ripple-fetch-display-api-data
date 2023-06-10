import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_flutter_getx_ripple_fetch_display_api_data/productmodule/models/product_model.dart';


class ApiService {
  static var client = http.Client();

  static Future<List<ProductModel>>  fetchProducts() async {
    var response = await client.get(Uri.parse("https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie"));
    var jsonData= jsonDecode(response.body);
    return (jsonData as List).map((e) => ProductModel.fromJson(e)).toList();
      

  }



}