import 'package:coinbase_clone/models/big_data_model.dart';
import 'package:dio/dio.dart';

class Repository{
  static String mainUrl = 'https://pro-api.coinmarketcap.com/v1/';
  final String apiKey = '257bcb4c-5bc8-411f-ada5-a2b854ec66df';
  // var currencyListingAPI = '${mainUrl}cryptocurrency/listings/latest';

  final Dio _dio;
  Repository(Dio dio): _dio = dio;

  Future<BigDataModel> getCoins() async{
    try{

      _dio.options.headers["X-CMC_PRO_API_KEY"] = apiKey;
      Response response = await _dio.get('${mainUrl}cryptocurrency/listings/latest');
      return BigDataModel.fromJson(response.data);
    }catch(error, stacktrace){
      print("Exception occured: $error stacktrace: $stacktrace");
      return BigDataModel.withError("error");

    }
  }
}