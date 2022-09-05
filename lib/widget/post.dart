import 'package:clone_instagram/themes.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/a.jpg'),
                ),
                SizedBox(
                  width: 8,
                ),
                Text('Albet'),
                Spacer(),
                Icon(Icons.more_horiz),
              ],
            ),
          ),
          Image.asset(
            'assets/images/g1.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Icon(Icons.favorite_border),
                SizedBox(
                  width: 8,
                ),
                Image.asset(
                  'assets/images/com.png',
                  width: 18,
                ),
                SizedBox(
                  width: 8,
                ),
                Image.asset(
                  'assets/images/send.png',
                  width: 26,
                ),
                Spacer(),
                Icon(Icons.bookmark_border),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              '7.489.199 suka',
              style: TextStyle(fontWeight: bold),
            ),
          ),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(
                      text: 'Albet',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fringilla enim id ex accumsan porttitor.'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('assets/images/a.jpg'),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'add comments',
                      hintStyle: TextStyle(color: colorGrey),
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  '😍',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  '❤️️',
                  style: TextStyle(fontSize: 12),
                ),
                Icon(
                  Icons.add_box_outlined,
                  color: colorGrey,
                  size: 18,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Divider(
            color: colorGrey,
            height: 1,
          ),
        ],
      ),
    );
  }
}
