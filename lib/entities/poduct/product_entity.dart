
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/entities/rating/rating_entity.dart';
import 'package:flutter_application_1/model/rating/rating.dart';
import 'package:json_annotation/json_annotation.dart';
part 'product_entity.g.dart';
Rating fromJson(json){
  final RatingEntity ratingEntity=RatingEntity.fromJson(json);
  final Rating rating=Rating.fromEntity(ratingEntity);
  return rating;
}
Map<String,dynamic>? toRatingJson(Rating rating){
  return rating.toEntity().toJson();
}
@JsonSerializable(explicitToJson: true)
class ProductEntity extends Equatable{
  @JsonKey(name: 'id')
  final int productid;
  @JsonKey(name:'title')
  final String producttitle;
  @JsonKey(name:'price')
  final double productprice;
  @JsonKey(name:'description')
  final String productdescription;
  @JsonKey(name:'image')
  final String productimage;
  @JsonKey(name:'rating',fromJson:fromJson ,toJson: toRatingJson)
  final Rating rating; 
  const ProductEntity({required this.productid,required this.producttitle,required this.productprice,required this.productdescription,required this.productimage,required this.rating});

    @override
    List<Object?> get props => [productid,producttitle,productprice,productdescription,productimage];
    factory ProductEntity.fromJson(Map<String,dynamic>? json)=>_$ProductEntityFromJson(json!);
    Map<String,dynamic>? toJson()=>_$ProductEntityToJson(this);

}