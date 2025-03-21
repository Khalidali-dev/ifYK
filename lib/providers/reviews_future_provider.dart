

import '../ui/ui.dart';

final reviewsFutureProvider = FutureProvider<List<Review>>((ref) async {
  return Repository.getFeedbacks().then((response){
    return List.from(response.data).map((e) => Review.fromJson(e)).toList();
  }).onError((error, stackTrace) => kMockReviews);
});
