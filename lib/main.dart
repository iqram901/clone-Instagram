import 'package:clone_instagram/pages/main_page.dart';
import 'package:clone_instagram/pages/slash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SlashPage(),
        '/main_page': (context) => MainPage(),
      },
    );
  }
}
