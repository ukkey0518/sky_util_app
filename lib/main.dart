import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sky_util_app/data/theme/theme_data.dart';
import 'package:sky_util_app/mvvm/views/view/wrapper/wrapper.dart';
import 'package:sky_util_app/providers/providers.dart';

void main() => runApp(
      MultiProvider(
        providers: globalProviders,
        child: MyApp(),
      ),
    );

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
