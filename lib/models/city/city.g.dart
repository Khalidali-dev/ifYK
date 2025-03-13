// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      details: json['details'] as String,
      footerDetails: json['footerDetails'] as String,
      topAttractionsDetails: json['topAttractionsDetails'] as String,
      topAttractions: (json['topAttractions'] as List<dynamic>)
          .map((e) => ExploreItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      concertsDetails: json['concertsDetails'] as String,
      concerts: (json['concerts'] as List<dynamic>)
          .map((e) => ExploreItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      foodAndDiningDetails: json['foodAndDiningDetails'] as String,
      foodAndDining: (json['foodAndDining'] as List<dynamic>)
          .map((e) => ExploreItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      nightLifeDetails: json['nightLifeDetails'] as String,
      nightLife: (json['nightLife'] as List<dynamic>)
          .map((e) => ExploreItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      outdoorAdventuresDetails: json['outdoorAdventuresDetails'] as String,
      outdoorAdventures: (json['outdoorAdventures'] as List<dynamic>)
          .map((e) => ExploreItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      sportsDetails: json['sportsDetails'] as String,
      sports: (json['sports'] as List<dynamic>)
          .map((e) => ExploreItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      festivalsDetails: json['festivalsDetails'] as String,
      festivals: (json['festivals'] as List<dynamic>)
          .map((e) => ExploreItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'details': instance.details,
      'footerDetails': instance.footerDetails,
      'topAttractionsDetails': instance.topAttractionsDetails,
      'topAttractions': instance.topAttractions,
      'concertsDetails': instance.concertsDetails,
      'concerts': instance.concerts,
      'foodAndDiningDetails': instance.foodAndDiningDetails,
      'foodAndDining': instance.foodAndDining,
      'nightLifeDetails': instance.nightLifeDetails,
      'nightLife': instance.nightLife,
      'outdoorAdventuresDetails': instance.outdoorAdventuresDetails,
      'outdoorAdventures': instance.outdoorAdventures,
      'sportsDetails': instance.sportsDetails,
      'sports': instance.sports,
      'festivalsDetails': instance.festivalsDetails,
      'festivals': instance.festivals,
    };
