import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sky_util_app/mvvm/views/view/wrapper/pages/home/home.dart';
import 'package:sky_util_app/mvvm/views/view/wrapper/pages/profile/profile.dart';
import 'package:sky_util_app/mvvm/views/view/wrapper/pages/spirit_tree/spirit_tree.dart';
import 'package:sky_util_app/mvvm/views/view/wrapper/pages/star/star.dart';

class WrapperScreen extends StatefulWidget {
  @override
  _WrapperScreenState createState() => _WrapperScreenState();
}

class _WrapperScreenState extends State<WrapperScreen> {
  int _currentIndex = 0;

  final _pages = [
    HomePage(),
    SpiritTreePage(),
    StarPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: const Text('ホーム'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Entypo.flow_tree),
            title: const Text('精霊ツリー'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Entypo.light_down),
            title: const Text('光の子'),
          ),
          BottomNavigationBarItem(
            icon: Icon(MaterialCommunityIcons.face_profile),
            title: const Text('プロフィール'),
          ),
        ],
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
