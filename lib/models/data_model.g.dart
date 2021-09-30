// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return DataModel(
    json['id'] as int,
    json['name'] as String,
    json['symbol'] as String,
    json['slug'] as String,
    json['numMarketPairs'] as int,
    json['dateAdded'] as String,
    json['tags'] as List<dynamic>,
    json['maxSupply'] as int,
    json['circulatingSupply'] as num,
    json['totalSupply'] as num,
    json['cmcRank'] as int,
    json['lastUpdated'] as String,
    QuoteModel.fromJson(json['quoteModel'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'slug': instance.slug,
      'numMarketPairs': instance.numMarketPairs,
      'dateAdded': instance.dateAdded,
      'tags': instance.tags,
      'maxSupply': instance.maxSupply,
      'circulatingSupply': instance.circulatingSupply,
      'totalSupply': instance.totalSupply,
      'cmcRank': instance.cmcRank,
      'lastUpdated': instance.lastUpdated,
      'quoteModel': instance.quoteModel,
    };
