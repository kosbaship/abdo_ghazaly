import 'package:abdo_ghazaly/network/dio_helper.dart';
import 'package:abdo_ghazaly/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abdo Ghazaly',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DioHelper();
    return HomeScreen();
  }
}
