import 'package:clone_instagram/pages/bag_page.dart';
import 'package:clone_instagram/pages/home_page.dart';
import 'package:clone_instagram/pages/profil_page.dart';
import 'package:clone_instagram/pages/reels_page.dart';
import 'package:clone_instagram/pages/search_page.dart';
import 'package:clone_instagram/themes.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int cIndex = 0;

  Widget costumNav() {
    return BottomNavigationBar(
      currentIndex: cIndex,
      onTap: (value) {
        setState(
          () {
            cIndex = value;
          },
        );
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(
              top: 20,
              bottom: 10,
            ),
            child: Icon(
              Icons.home,
              size: 25,
              color: cIndex == 0 ? colorBlack : colorGrey,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(
              top: 20,
              bottom: 10,
            ),
            child: Icon(
              Icons.search,
              size: 25,
              color: cIndex == 1 ? colorBlack : colorGrey,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(
              top: 20,
              bottom: 10,
            ),
            child: Image.asset(
              'assets/images/reels.png',
              width: 25,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(
              top: 20,
              bottom: 10,
            ),
            child: Icon(
              Icons.shopping_bag_outlined,
              size: 25,
              color: cIndex == 3 ? colorBlack : colorGrey,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(
              top: 20,
              bottom: 10,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/images/as.png',
                width: 25,
              ),
            ),
          ),
          label: '',
        ),
      ],
    );
  }

  Widget custumbody() {
    switch (cIndex) {
      case 0:
        return HomePage();
      case 1:
        return SearchPage();
      case 2:
        return ReelsPage();
      case 3:
        return BagPage();
      case 4:
        return ProfilPage();
    }
    return HomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: colorWith,
      bottomNavigationBar: costumNav(),
      body: custumbody(),
    );
  }
}
