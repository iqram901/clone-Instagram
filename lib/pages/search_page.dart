import 'package:clone_instagram/themes.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  Widget search() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colorGereyy,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(Icons.search),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration.collapsed(
                hintText: 'Cari',
                hintStyle: TextStyle(color: Colors.grey[600]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget content() {
    return Container(
      margin: EdgeInsets.only(bottom: 2),
      color: colorBlack,
      child: Row(
        children: [
          Image.asset(
            'assets/images/g1.jpg',
            width: 129,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 2,
          ),
          Image.asset(
            'assets/images/g2.jpg',
            width: 129,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 2,
          ),
          Image.asset(
            'assets/images/g3.jpg',
            width: 129,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  search(),
                  for (var i = 0; i < 10; i++) content(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
