import 'package:flutter/material.dart';
import 'package:sky_util_app/data/theme/theme_data.dart';
import 'package:sky_util_app/mvvm/views/view/wrapper/wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData(context),
      home: WrapperScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
