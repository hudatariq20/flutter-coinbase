// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuoteModel _$QuoteModelFromJson(Map<String, dynamic> json) {
  return QuoteModel(
    usdModel: UsdModel.fromJson(json['usdModel'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QuoteModelToJson(QuoteModel instance) =>
    <String, dynamic>{
      'usdModel': instance.usdModel,
    };
