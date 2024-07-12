import 'package:flutter/material.dart';
import 'package:flutter_application_3/json_file.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Center(
        //     child: Text('Map'))
        //     ),
        body: FlutterMap(
          options: const MapOptions(
          initialCenter: LatLng(59.937500, 30.308611),
          initialZoom: 12,
          maxZoom: 19,
          
          ),
          children: [
            openStreetMapTilelayer,
            MarkerLayer(markers: Markers.markers),
          ],
        ),
      );
  }
}

TileLayer get openStreetMapTilelayer => TileLayer(
  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
  userAgentPackageName: 'flutter_application_3',
  tileSize: 256,
  maxZoom: 20,
  maxNativeZoom: 20,
);