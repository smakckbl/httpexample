class productResponselist {
  var name;
  var brand;
  var price;

  productResponselist({
    required this.name,
    required this.brand,
    required this.price,
  });
  productResponselist.fromJson(Map<String, dynamic> json) {
    var name = json['ürün adı']!.toString();
    var brand = json['marka']?.toString();
    var price = json['fiyat']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['ürün adı'] = name;
    data['marka'] = brand;
    data['fiyat'] = price;
    return data;
  }
}
