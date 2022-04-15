import 'package:card_flip_listview/path_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scrollbarTheme: const ScrollbarThemeData(isAlwaysShown: false)),
      home: const PathScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
