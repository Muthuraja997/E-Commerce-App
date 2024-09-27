import 'dart:convert';

import 'package:flutter_application_1/entities/poduct/product_entity.dart';
import 'package:flutter_application_1/model/rating/product/product.dart';
import 'package:flutter_application_1/repositaries/all_products_repo/all_product_repository.dart';
import 'package:http/http.dart' as http;
class AllProductActions extends AllProductRepository{
  
//   Future<List<Product>?> fetchAllproducts() async {
//   try {
//     final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
//     print('Response status: ${response.statusCode}');
//     if (response.statusCode == 200) {
//       final List<dynamic> json = jsonDecode(response.body);
//       return json.map<Product>((e) => Product.fromEntity(ProductEntity.fromJson(e))).toList();
//     } else {
//       print('Failed to load products. Status code: ${response.statusCode}');
//     }
//   } catch (e) {
//     print('Error fetching products: $e');
//   }
//   return null;
// }


  Future<List<Product>?> fetchAllproducts() async {
    final response= await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode==200){
      final json=jsonDecode(response.body);
      return json.map<Product>((e)=>Product.fromEntity(ProductEntity.fromJson(e))).toList();
    }
    return null;
  }

}