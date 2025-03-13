import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'explore_item.freezed.dart';
part 'explore_item.g.dart';

@freezed
class ExploreItem with _$ExploreItem {
  const factory ExploreItem({
    required String name,
    required String image,
  }) = _ExploreItem;



  factory ExploreItem.fromJson(Map<String, dynamic> json) =>
      _$ExploreItemFromJson(json);
}