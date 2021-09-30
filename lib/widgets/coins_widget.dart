import 'package:cached_network_image/cached_network_image.dart';
import 'package:coinbase_clone/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoinsWidgetList extends StatelessWidget{
 final coinIconUrl =
        "https://raw.githubusercontent.com/spothq/cryptocurrency-icons/master/128/color/";
  final List<DataModel> coins;
  CoinsWidgetList({Key? key, required this.coins}) :super(key: key);
  @override
  Widget build(BuildContext context) {
   return SafeArea(
                child: Column(
                        children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                              child: Text('Crypto Currency', 
                                  style: Theme.of(context).textTheme.headline5,
                                  ),
                            ),
                             SizedBox(height: 10.0,),

                             Expanded(child: ListView.builder(
                                                          itemCount: coins.length,
                                                          itemExtent: 160.0,
                                                          itemBuilder: (context, index){
                                                          
                                                              return GestureDetector(
                                                                onTap: () {},
                                                                child: Container(
                                                                  width: double.infinity,
                                                                  height: 160,
                                                                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                                                                  margin: const EdgeInsets.symmetric(
                                                                    horizontal: 8.0, vertical: 16.0
                                                                  ),
                                                                  decoration: BoxDecoration(
                                                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                                                    borderRadius: BorderRadius.circular(16.0),
                                                              
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                    children: [
                                                                        Container(
                                                                          padding: const EdgeInsets.only(left: 16.0),
                                                                          height: 96.0,
                                                                          width: 96.0,
                                                                          child: Column(
                                                                            children: [
                                                                               Image(image: AssetImage('assets/btc.png'))
                                                                               // CachedNetworkImage(imageUrl:'assets/images/btc.png',
                                                                              //  placeholder: (context, url) => CircularProgressIndicator(),
                                                                              //  errorWidget: (context,url, error ) => 
                                                                              //                 SvgPicture.asset('assets/icons/dollar.svg'),
                                                                              //   ),
                                                                            ],
                                                                          ),
                                                                        )
                                                                    ],),
                                                                ),
                                                              );
                                                          }),
                                              )
                            ],
                          )
                );
  }

  
}