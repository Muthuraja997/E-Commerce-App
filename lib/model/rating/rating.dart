import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/entities/rating/rating_entity.dart';

class Rating extends Equatable{
  final double ratind;
  final int count;
  const Rating({required this.ratind,required this.count});
  static Rating fromEntity(RatingEntity ratingEntity){
    return Rating(count: ratingEntity.count,ratind: ratingEntity.rating);
  }
  RatingEntity toEntity(){
    return RatingEntity(count: count,rating: ratind);
  }
  @override
  List<Object?> get props => [count,ratind];
  
}