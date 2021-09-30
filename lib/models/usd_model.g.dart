// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usd_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsdModel _$UsdModelFromJson(Map<String, dynamic> json) {
  return UsdModel(
    price: json['price'] as num,
    volume24h: json['volume24h'] as num,
    percentChange_1h: json['percentChange_1h'] as num,
    percentChange_24h: json['percentChange_24h'] as num,
    percentChange_7d: json['percentChange_7d'] as num,
    percentChange_30d: json['percentChange_30d'] as num,
    percentChange_60d: json['percentChange_60d'] as num,
    percentChange_90d: json['percentChange_90d'] as num,
    marketCap: json['marketCap'] as num,
    lastUpdated: json['lastUpdated'] as String,
  );
}

Map<String, dynamic> _$UsdModelToJson(UsdModel instance) => <String, dynamic>{
      'price': instance.price,
      'volume24h': instance.volume24h,
      'percentChange_1h': instance.percentChange_1h,
      'percentChange_24h': instance.percentChange_24h,
      'percentChange_7d': instance.percentChange_7d,
      'percentChange_30d': instance.percentChange_30d,
      'percentChange_60d': instance.percentChange_60d,
      'percentChange_90d': instance.percentChange_90d,
      'marketCap': instance.marketCap,
      'lastUpdated': instance.lastUpdated,
    };
