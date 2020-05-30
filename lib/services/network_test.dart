import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';

Future<List<Text>> getData() async {
  String title = 'pulp+fiction';

  String url = 'https://tastedive.com/api/similar?q=';

  http.Response response = await http.get(url + title);

  if (response.statusCode == 200) {
    List<Text> parseResult = parse(response.body);
    return parseResult;
  } else {
    print(response.statusCode);
  }
}

List<Text> parse(String data) {
  var readData = jsonDecode(data)['Similar']['Results'];

  List<Text> recommendations = [
    Text(readData[0]['Name']),
    Text(readData[1]['Name']),
    Text(readData[2]['Name']),
  ];

  return recommendations;
}
