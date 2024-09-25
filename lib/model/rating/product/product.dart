import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/entities/poduct/product_entity.dart';
import 'package:flutter_application_1/model/rating/rating.dart';

class Product extends Equatable {
  final int productid;

  final String producttitle;

  final double productprice;
  final String productdescription;

  final String productimage;

  final Rating rating;
  const Product(
      {required this.productid,
      required this.producttitle,
      required this.productprice,
      required this.productdescription,
      required this.productimage,
      required this.rating});
  static Product fromEntity(ProductEntity ProductEntity){
    return Product(productid: ProductEntity.productid, producttitle: ProductEntity.producttitle, productprice: ProductEntity.productprice, productdescription: ProductEntity.productdescription, productimage: ProductEntity.productimage, rating: ProductEntity.rating);
  }
  ProductEntity toEntity(){
    return ProductEntity(productid: productid, producttitle: producttitle, productprice: productprice, productdescription: productdescription, productimage: productimage, rating: rating);
  }
  @override
  List<Object?> get props => [productid,producttitle,productprice,productdescription,productimage];
}
