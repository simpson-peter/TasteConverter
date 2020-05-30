import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  getData();
}

void getData() async {
  String title = 'pulp+fiction';

  String url = 'https://tastedive.com/api/similar?q=';

  http.Response response = await http.get(url + title);

  if (response.statusCode == 200) {
    parseAndPrint(response.body);
  } else {
    print(response.statusCode);
  }
}

void parseAndPrint(String data) {
  var readData = jsonDecode(data)['Similar']['Results'];

  print(readData[0]['Name']);
  print(readData[1]['Name']);
  print(readData[2]['Name']);
  print(readData[3]['Name']);
  print(readData[4]['Name']);
  print(readData[5]['Name']);
}
