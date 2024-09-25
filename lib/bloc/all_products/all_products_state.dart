import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/model/rating/product/product.dart';

class AllProductsState extends Equatable {
  final List<Product> allproduct;
  final bool loading;
  const AllProductsState({this.allproduct=const [], this.loading = false});
  AllProductsState copywith({List<Product>? allproduct, bool? loading}) {
    return AllProductsState(
        allproduct: allproduct ?? this.allproduct,
        loading: loading ?? this.loading);
  }

  @override
  List<Object?> get props => [];
}
