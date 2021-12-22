import 'package:flutter/material.dart';
import 'package:maps_app/screens/wonders_location_screen.dart';

import 'screens/home_screen.dart';

void main() =>
    runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maps Example',
      home: HomeScreen(),
      routes: {WondersLocationScreen.routeName: (ctx) => const WondersLocationScreen()},
    );
  }
}

