// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductEntity _$ProductEntityFromJson(Map<String, dynamic> json) =>
    ProductEntity(
      productid: (json['id'] as num).toInt(),
      producttitle: json['title'] as String,
      productprice: (json['price'] as num).toDouble(),
      productdescription: json['description'] as String,
      productimage: json['image'] as String,
      rating: fromJson(json['rating']),
    );

Map<String, dynamic> _$ProductEntityToJson(ProductEntity instance) =>
    <String, dynamic>{
      'id': instance.productid,
      'title': instance.producttitle,
      'price': instance.productprice,
      'description': instance.productdescription,
      'image': instance.productimage,
      'rating': toRatingJson(instance.rating),
    };
