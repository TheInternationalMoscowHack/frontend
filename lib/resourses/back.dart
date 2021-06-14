import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> sendThree(id, district, date, categories) async {
  final url = Uri.parse(
      'https://events-hack.herokuapp.com/api/v1/first_recommendation/?uid=$id');
  http.post(
    url,
    body: jsonEncode(<String, String>{
      'district': district,
      'date': date,
      'categories': categories
    }),
  );
}

Future<Map<String, dynamic>> getQuestion(id) async {
  final url = Uri.parse(
      'https://events-hack.herokuapp.com/api/v1/collection_recommendation/?uid=$id');
  http.Response response = await http.get(url);
  print('Body: ${response.body}');
  Map<String, dynamic> questions = json.decode(utf8.decode(response.bodyBytes));
  return questions;
}

Future<void> sendQuestion(id, question, answer) async {
  final url = Uri.parse(
      'https://events-hack.herokuapp.com/api/v1/collection_recommendation/?uid=$id');
  http.post(
    url,
    body: jsonEncode(<String, String>{'question': question, 'answers': answer}),
  );
}

Future<Map<String, dynamic>> getFinal(id) async {
  final url = Uri.parse(
      'https://events-hack.herokuapp.com/api/v1/recommendation_final/?uid=$id');
  http.Response response = await http.get(url);
  print('Body: ${response.body}');
  Map<String, dynamic> events = json.decode(utf8.decode(response.bodyBytes));
  return events;
}
