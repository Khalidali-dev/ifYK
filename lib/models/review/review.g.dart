// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => _ReviewModel(
      score: (json['score'] as num).toInt(),
      title: json['title'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$ReviewModelToJson(_ReviewModel instance) =>
    <String, dynamic>{
      'score': instance.score,
      'title': instance.title,
      'text': instance.text,
    };
