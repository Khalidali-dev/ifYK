import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ifyk_landing/models/explore_item/explore_item.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
class City with _$City {
  const factory City({
    required String id,
    required String name,
    required String details,
    required String footerDetails,
    required String topAttractionsDetails,
    required List<ExploreItem> topAttractions,
    required String concertsDetails,
    required List<ExploreItem> concerts,
    required String foodAndDiningDetails,
    required List<ExploreItem> foodAndDining,
    required String nightLifeDetails,
    required List<ExploreItem> nightLife,
    required String outdoorAdventuresDetails,
    required List<ExploreItem> outdoorAdventures,
    required String sportsDetails,
    required List<ExploreItem> sports,
    required String festivalsDetails,
    required List<ExploreItem> festivals,
  }) = _City;



  factory City.fromJson(Map<String, dynamic> json) =>
      _$CityFromJson(json);
}