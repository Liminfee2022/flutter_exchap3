import 'package:exchap3/home/HomeScreen.dart';
import 'package:exchap3/theme/theme_constants.dart';
import 'package:exchap3/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';

void main() {
  runApp(const MyApp());
}

ThemeManager _themeManager = ThemeManager();
final subject = PublishSubject<int>();
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;
  void searchButton() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      //themeMode: _themeManager.themeMode,
      home: HomeScreen(searchButton: searchButton),
    );
  }
}
