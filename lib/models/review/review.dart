import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review {
  const factory Review({
    required int score,
    required String title,
    required String text,
  }) = _Review;



  factory Review.fromJson(Map<String, dynamic> json) =>
      _$ReviewFromJson(json);
}