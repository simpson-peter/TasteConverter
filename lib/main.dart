import 'package:flutter/material.dart';
import 'package:tasteconverter/services/network_helper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var recData;

  void getRecData() async {
    NetworkHelper netHelper = NetworkHelper(names: 'pulp+fiction');
    recData = await netHelper.getData();
    debugPrint('in gRD(), data recieved: ' + recData);
  }

  @override
  void initState() {
    super.initState();
    getRecData();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Taste Converter',
          ),
        ),
        body: Text(recData ?? 'await'),
      ),
    );
  }
}
