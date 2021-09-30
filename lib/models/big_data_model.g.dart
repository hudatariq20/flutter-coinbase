// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'big_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BigDataModel _$BigDataModelFromJson(Map<String, dynamic> json) {
  return BigDataModel(
    statusModel:
        StatusModel?.fromJson(json['statusModel'] as Map<String, dynamic>),
    dataModel: (json['dataModel'] as List<dynamic>)
        .map((e) => DataModel?.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$BigDataModelToJson(BigDataModel instance) =>
    <String, dynamic>{
      'statusModel': instance.statusModel,
      'dataModel': instance.dataModel,
    };
