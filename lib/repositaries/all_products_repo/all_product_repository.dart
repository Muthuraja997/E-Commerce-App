import 'package:flutter_application_1/model/rating/product/product.dart';

abstract class AllProductRepository {
  Future<List<Product>?> FetchAllproducts();
}