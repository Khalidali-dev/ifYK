import '../ui/ui.dart';

final reviewsFutureProvider = FutureProvider<List<ReviewModel>>((ref) async {
  return Repository.getFeedbacks().then((response) {
    return List.from(response.data)
        .map((e) => ReviewModel.fromJson(e))
        .toList();
  }).onError((error, stackTrace) => kMockReviews);
});
