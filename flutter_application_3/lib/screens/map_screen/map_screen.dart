import 'package:flutter/material.dart';
import 'package:flutter_application_3/json_file.dart';
import 'package:flutter_application_3/screens/map_screen/widgets/search_bar_widget.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  void initState() {
    Markers.fetchRestList(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [ FlutterMap(
            options: const MapOptions(
            initialCenter: LatLng(59.937500, 30.308611),
            initialZoom: 12,
            maxZoom: 19,
            
            ),
            children: [
              openStreetMapTilelayer,
              MarkerLayer(
                markers: Markers.markers
              ),
            ],
          ),
          const SearchBarWidget(),
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