import 'package:coinbase_clone/models/big_data_model.dart';
import 'package:coinbase_clone/repository/respository.dart';
import 'package:coinbase_clone/widgets/coins_widget.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CryptoScreen extends StatefulWidget {

  const CryptoScreen({Key? key}): super(key: key);
  _CryptoScreenState createState() => _CryptoScreenState();
}

class _CryptoScreenState extends State<CryptoScreen> {
  late Future<BigDataModel> _futureCoins; 
  late Repository repository;

  @override
  void initState(){
    repository = Repository(Dio());
    _futureCoins = repository.getCoins();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<BigDataModel>(
      future: _futureCoins,
      builder: (context,snapshot){
        if(snapshot.connectionState == ConnectionState.done){
            if(snapshot.hasData){

                var coins = snapshot.data!.dataModel;
               print(coins.toString());
             return CoinsWidgetList(coins: coins);

            }else if(snapshot.hasError){
                return Text('${snapshot.error}');
            }
        }

        return Center(child: CircularProgressIndicator());
      },
    );
  }
  
}

