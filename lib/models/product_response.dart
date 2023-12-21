import 'dart:convert';

class ProductResponse {
  final String url = "https://reqres.in/api/users/2";

  Future<ProductResponse?> productModel() async {
    var http;
    var res = await http.put(Uri.parse(url));
    if (res.statusCode == 200) {
      var jsonBody = productModel.fromJson(jsonDecode(res.body));
      return jsonBody;
    } else {
      print("İstek başarısız oldu=>${res.statusCode}");
    }
  }
}
