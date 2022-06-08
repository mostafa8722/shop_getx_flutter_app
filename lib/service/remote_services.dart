import 'package:http/http.dart' as http;


import '../models/products.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<Product>> fetchProducts() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));
    print("ddddddd");
    print(response.statusCode.toString());
    if (response.statusCode == 200) {
      var jsonString = response.body;
      print(response.body);
      return productFromJson(jsonString);
    } else {
      var jsonString = response.body;
      return productFromJson(jsonString);
    }
  }
}