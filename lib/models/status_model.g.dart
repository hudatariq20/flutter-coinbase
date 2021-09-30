// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusModel _$StatusModelFromJson(Map<String, dynamic> json) {
  return StatusModel(
    json['timestamp'] as String,
    json['errorCode'] as int,
    json['errorMessage'] as String,
    json['elapsed'] as int,
    json['creditCount'] as int,
    json['notice'] as String,
    json['totalCount'] as int,
  );
}

Map<String, dynamic> _$StatusModelToJson(StatusModel instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'elapsed': instance.elapsed,
      'creditCount': instance.creditCount,
      'notice': instance.notice,
      'totalCount': instance.totalCount,
    };
