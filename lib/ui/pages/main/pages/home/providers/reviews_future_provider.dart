import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ifyk_landing/constants/mock_reviews.dart';
import 'package:ifyk_landing/models/review/review.dart';
import 'package:ifyk_landing/services/repository.dart';

final reviewsFutureProvider = FutureProvider<List<Review>>((ref) async {
  return Repository.getFeedbacks().then((response){
    return List.from(response.data).map((e) => Review.fromJson(e)).toList();
  }).onError((error, stackTrace) => kMockReviews);
});
