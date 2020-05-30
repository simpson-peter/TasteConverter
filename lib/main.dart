import 'package:flutter/material.dart';
import 'package:tasteconverter/services/network_test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void getPrintableData() async {
    List<Text> result = await getData();
    print(result);
  }

  @override
  void initState() {
    super.initState();
    print('Call 1 Here');
    getPrintableData();
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
        body: Column(),
      ),
    );
  }
}
