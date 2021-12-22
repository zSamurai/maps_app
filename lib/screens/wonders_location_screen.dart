import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../world_wonders.dart';

class WondersLocationScreen extends StatefulWidget {
  const WondersLocationScreen({Key? key}) : super(key: key);
  static const routeName = '/wonders-location-screen';

  @override
  _WondersLocationScreen createState() => _WondersLocationScreen();
}

class _WondersLocationScreen extends State<WondersLocationScreen> {
  late GoogleMapController mapController;

  final Set<Marker> _markes = {};


  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }


  void _addMarker(WorldWonder wonderItem) {
    setState(() {
      _markes.add(
        Marker(
          markerId: MarkerId(
            wonderItem.latLong.toString(),
          ),
          position: wonderItem.latLong,
          infoWindow: InfoWindow(
              title: wonderItem.name,
              snippet: wonderItem.description),
          icon: BitmapDescriptor.defaultMarker,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentWonder =
    ModalRoute.of(context)!.settings.arguments as WorldWonder;

    _addMarker(currentWonder);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Maps App'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            markers: _markes,
            initialCameraPosition: CameraPosition(target: currentWonder.latLong, zoom: 11.0),
          ),
        ],
      ),
    );
  }
}