import 'package:flutter/material.dart';

 class CustomNavBar extends StatelessWidget{

  const CustomNavBar({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {

    return BottomAppBar(
       color: Colors.white,
       child: Container(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.stairs, color: Colors.grey,)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.dashboard_rounded, color: Colors.grey)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.person, color: Colors.grey,))
                ],),
       ),
    );
 
  }
  
}