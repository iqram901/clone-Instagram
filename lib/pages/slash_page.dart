import 'dart:async';

import 'package:clone_instagram/themes.dart';
import 'package:flutter/material.dart';

class SlashPage extends StatefulWidget {
  const SlashPage({Key? key}) : super(key: key);

  @override
  _SlashPageState createState() => _SlashPageState();
}

class _SlashPageState extends State<SlashPage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/main_page'),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWith,
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/ig.png',
                    width: 130,
                  ),
                ),
                Text(
                  'From',
                  style: TextStyle(
                    color: Color(0xffB2B2B2),
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Image.asset(
                  'assets/images/meta.png',
                  width: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
