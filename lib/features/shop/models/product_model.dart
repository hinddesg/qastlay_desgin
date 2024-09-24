// import 'package:flutter/cupertino.dart';
// import '../../../utils/functions/extenstion.dart';
// class ProductModel {
//   static const ID = "id";
//   static const IMAGE = "image";
//   static const NAME = "name";
//   static const BRAND = "brand";
//   static const PRICE = "price";
//
//   String? id;
//   String? image;
//   String? name;
//   String? brand;
//   double? price;
//
//   ProductModel({
//     this.id,
//     this.image,
//     this.name,
//     this.brand,
//     this.price,
//   });
//
//   ProductModel.fromMap(Map<String, dynamic> data)
//       : id = data[ID],
//         image = data[IMAGE],
//         name = data[NAME],
//         brand = data[BRAND],
//         price = _parsePrice(data[PRICE]);
//
//   static double? _parsePrice(dynamic priceData) {
//     if (priceData is num) {
//       return priceData.toDouble();
//     } else if (priceData is String) {
//       return double.tryParse(priceData);
//     }
//     return null; // Return null if priceData is not a number or a string
//   }
// }




class ProductModel {
  final String name;
  final String image;
  final String description;
  final String price;
  final String brand;
  //final Color color;

  ProductModel(this.brand, {
    required this.name,
    required this.image,
    required this.description,
    //required this.color,
    required this.price,
  });

  ProductModel.fromJson(Map<dynamic, dynamic> map)
      : name = map['name'] ?? 'Unknown',
        image = map['image'] ?? '',
        description = map['description'] ?? 'No description available',
        brand = map['brand'] ?? 'No brand available',
        price = map['price']?.toString() ?? '0.0';
        //color = HexColor.fromHex(map['color']); // Ensure color conversion is valid

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'image': image,
      'description': description,
      //'color': color.toHex(),  // Assuming you have a method to convert Color to hex
      'price': price,
      'brand': brand,
    };
  }
 }
// class ProductModel {
//   String? id;
//   String? name;
//   double? price;
//   String? description;
//
//   // Constructor
//   ProductModel({this.id, this.name, this.price, this.description});
//
//   // fromJson method to convert Firestore data to a ProductModel instance
//   factory ProductModel.fromJson(Map<String, dynamic> json) {
//     return ProductModel(
//       id: json['id'] as String?,
//       name: json['name'] as String?,
//       price: (json['price'] as num?)?.toDouble(),
//       description: json['description'] as String?,
//     );
//   }
//
//   // You can also add a toJson method if you need it for saving data
//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'name': name,
//       'price': price,
//       'description': description,
//     };
//   }
// }