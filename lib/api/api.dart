import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List> fetchProfile() async {
  final response = await http.get(
      'https://elephant-api.herokuapp.com/elephants',
      headers: {'accept': 'application/json'});
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
}
