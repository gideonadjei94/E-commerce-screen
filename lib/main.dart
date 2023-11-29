

import 'package:flutter/material.dart';
import 'package:flutter_screen_lock/flutter_screen_lock.dart';
import 'shop.dart';


void main() {
  runApp(MaterialApp(
    home: Market(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color.fromARGB(255, 11, 147, 120),
      fontFamily: 'Gordita',
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: Color.fromARGB(255, 11, 147, 120),
      )
      
    ),
  ));
}

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color.fromARGB(255, 11, 147, 120),

      ),

      drawer: Drawer(),

      body: Center(child: Text('Dashboard dey already Baba')),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 11, 147, 120),
        onPressed: (){
          screenLock(
            context: context,
             correctString: "1234",
             canCancel: true,
             );
           Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Shop()),
          );
        },
        child: Icon(Icons.navigate_next),
         elevation: 6.0, // Set elevation
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Set border radius
        ),
         
      ),
    );
  }
}