import 'package:json_annotation/json_annotation.dart';
import 'package:coinbase_clone/models/models.dart';
part 'quote_model.g.dart';

@JsonSerializable()
class QuoteModel{
  final UsdModel? usdModel;

  QuoteModel({
    required this.usdModel,
  });
  
  factory QuoteModel.fromJson(Map<String, dynamic> json) {
    return QuoteModel(
      usdModel: UsdModel.fromJson(json["USD"]),
    );
  }

  //factory QuoteModel.fromJson(Map<String, dynamic> json) => _$QuoteModelFromJson(json);
      Map<String, dynamic> toJson() => _$QuoteModelToJson(this);
}