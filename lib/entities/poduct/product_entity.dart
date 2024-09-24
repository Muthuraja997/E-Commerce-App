import 'package:equatable/equatable.dart';
// import 'package:flutter_application_1/model/rating/rating.dart';
import 'package:json_annotation/json_annotation.dart';
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
  // @JsonKey(name:'rating',fromJson: ,toJson: )
  // final Rating rating; 
  const ProductEntity({required this.productid,required this.producttitle,required this.productprice,required this.productdescription,required this.productimage});

    @override
    List<Object?> get props => [productid,producttitle,productprice,productdescription,productimage];

}