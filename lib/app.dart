import 'package:flutter/material.dart';
import 'package:shop_getx_flutter_app/views/home_screen.dart';


class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "shop Getx app",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );


  }
}