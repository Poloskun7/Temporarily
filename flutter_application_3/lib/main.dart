import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 252, 210, 72) 
        ) 
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Flutter map'))
            ),
        body: FlutterMap(
          options: const MapOptions(
          initialCenter: LatLng(59.937500, 30.308611),
          initialZoom: 12,
          ),
          children: [
            openStreetMapTilelayer,
            const MarkerLayer(markers: [
            Marker(
              point: LatLng(59.937017, 30.203902),
              width: 60,
              height: 60,
              alignment: Alignment.centerLeft, 
              child: Icon(
                Icons.location_pin,
                size: 60,
                color: Colors.red,
                )
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

TileLayer get openStreetMapTilelayer => TileLayer(
  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
  userAgentPackageName: 'flutter_application_3',
);