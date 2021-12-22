import 'package:flutter/material.dart';
import 'package:maps_app/screens/wonders_location_screen.dart';
import 'package:maps_app/world_wonders.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: const EdgeInsets.all(12),
            title: Text(worldWondersList[index].name),
            subtitle: Text(worldWondersList[index].description),
              onTap: () => Navigator.of(context).pushNamed(
                WondersLocationScreen.routeName,
                arguments: worldWondersList[index],
              ),
          );
        },
        itemCount: worldWondersList.length
      ),
    );
  }
}
