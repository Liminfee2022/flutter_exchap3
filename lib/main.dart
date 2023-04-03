import 'package:exchap3/home/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline4: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          bodyText2: TextStyle(
              fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
          headline3: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          subtitle2: TextStyle(
              fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
