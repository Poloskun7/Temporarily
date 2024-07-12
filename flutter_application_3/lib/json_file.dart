import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

abstract class Markers {

  static List<Marker> markers = [];

  static Future<void> fetchRestList() async {
  try {
    final response = await
    Dio().get('https://retailapi.ru/api/restaurants/');
    var jsonData = response.data;
    List<Map<String, dynamic>> coordinatesData = [];
    for (var item in jsonData) {
      Map<String, dynamic> coordinates = {
        //'address' : item['address'],
        'lat' : item['lat'],
        'lon' : item['lon'],
      };
      coordinatesData.add(coordinates);
    }
    for (Map item in coordinatesData) {
      Marker marker = Marker(
        point: LatLng(item['lat'], item['lon']), 
        width: 60,
        height: 60,
        alignment: Alignment.centerLeft, 
        child: const Icon(
        Icons.location_pin,
        size: 30,
        color: Colors.red,
        )
      );
      markers.add(marker);
    }
  } catch (e) {
      print(e);    
    }
  }  
}
