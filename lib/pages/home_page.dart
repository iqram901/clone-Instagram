import 'package:clone_instagram/themes.dart';
import 'package:clone_instagram/widget/build_story.dart';
import 'package:clone_instagram/widget/post.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget header() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: colorWith,
      elevation: 0,
      flexibleSpace: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            top: 10,
            right: 20,
            left: 20,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/images/text.png',
                width: 120,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.keyboard_arrow_down),
              Spacer(),
              Image.asset(
                'assets/images/plus.png',
                width: 20,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.favorite_border,
                size: 25,
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                'assets/images/send.png',
                width: 26,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget story() {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            BuildStory(),
            for (var i = 0; i < 10; i++) Post(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        story(),
      ],
    );
  }
}
