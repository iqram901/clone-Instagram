import 'package:flutter/material.dart';
import 'package:clone_instagram/themes.dart';

class BuildStory extends StatelessWidget {
  const BuildStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 16,
            ),
            StoryItems(image: 'assets/images/as.png', title: 'Your Story'),
            StoryItems(image: 'assets/images/a.jpg', title: 'Albet'),
            StoryItems(image: 'assets/images/b.jpg', title: 'Meli'),
            StoryItems(image: 'assets/images/c.jpg', title: 'Yesie'),
            StoryItems(image: 'assets/images/d.jpg', title: 'Houwrd'),
            StoryItems(image: 'assets/images/e.jpg', title: 'Brings'),
          ],
        ),
      ),
    );
  }
}

class StoryItems extends StatelessWidget {
  const StoryItems({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String title, image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            padding: EdgeInsets.all(2.3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                colors: [
                  colorOrange,
                  colorYellow,
                ],
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: colorWith,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  image,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
