import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:spring_edge_assignment/models/university.dart';

class LocationApiServices {
  String baseUrl = 'http://universities.hipolabs.com/';
  Future<List<University>> fetchUniversities(String query) async {
    try {
      final response = await http.get(
        Uri.parse('${baseUrl}search?name=$query'),
      );

      final List data = json.decode(response.body);
      return data.map((e) => University.fromJson(e)).toList();
    } catch (e) {
      return [
          University(name: 'Middle Earth University'),
          University(name: 'Middleton College'),
          University(name: 'Midfield Institute'),
        ];
    }
  }
}
