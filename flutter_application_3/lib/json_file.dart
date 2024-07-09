import 'dart:convert';
import 'package:dio/dio.dart';

Future<void> fetchRestList() async {
  final dio = Dio();
  try {
    final response = await
    dio.get('https://retailapi.ru/api/geozones/');
    var jsonData = jsonDecode(response.data.toString()) as List;
    for (var item in jsonData) {
      print(item['address']);
      print(item['lat']);
      print(item['lon']);
    }
  } catch (e) {
    print(e);    
  }
}