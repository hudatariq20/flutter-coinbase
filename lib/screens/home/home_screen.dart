import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens.dart';

class HomeScreen extends StatefulWidget{

   const HomeScreen({Key? key}): super(key: key);

  _HomeScreenState createState() => _HomeScreenState();

  
}

class _HomeScreenState extends State<HomeScreen>{
  int _selectedIndex = 0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  
  static const List<Widget> _screenList = [
     CryptoScreen(),
     Text('2'),
     Text('3')
    //SecondScreen(),
    //ThirdScreen(),
  ];
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          body: _screenList[_selectedIndex],
          backgroundColor: Color.fromRGBO(11, 12, 54, 1),
          bottomNavigationBar: BottomNavigationBar(
                                  items: const<BottomNavigationBarItem>[
                                    BottomNavigationBarItem(
                                      icon: Icon(Icons.stairs),
                                      label: 'Crypto' ),
                                    BottomNavigationBarItem(
                                      icon: Icon(Icons.flutter_dash_rounded),
                                      label: 'Flutter Dash' 
                                       ),
                                      BottomNavigationBarItem(
                                      icon: Icon(Icons.person),
                                      label: 'Profile' )
                                  ],
                                  currentIndex: _selectedIndex,
                                  selectedItemColor: Colors.amber[800],
                                  onTap: _onItemTapped,
                                  ) ,
      );  
  }
}