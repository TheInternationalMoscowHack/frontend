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
