import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:tasteconverter/constants.dart';

//accepts title names in 'firstword+secondword' format only
class NetworkHelper {
  NetworkHelper({this.names});
  String names;

  Future getData() async {
    http.Response response = await http.get(kTDiveURLBeginning + names);

    if (response.statusCode == 200) {
      var readData = jsonDecode(response.body)['Similar']['Results'];
      print('in NH, data = ' + readData[0]['Name']);
      return readData[0]['Name'];
    } else {
      print(response.statusCode);
    }
  }
}
