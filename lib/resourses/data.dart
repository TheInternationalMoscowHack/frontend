// import 'dart:io';
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:hive/hive.dart';
part 'data.g.dart';

@HiveType(typeId: 0)
class User {
  User({this.id = 0, this.token = 'a', this.answer = 'a'});

  @HiveField(0)
  int id;

  @HiveField(1)
  String token;

  @HiveField(2)
  String answer;
}

// локация и время фотка название и описание
@HiveType(typeId: 1)
class Event {
  Event({
    this.location = 'a',
    this.time = 'a',
    this.image = 'a',
    this.title = 'a',
    this.description = 'a',
  });

  @HiveField(0)
  String location;

  @HiveField(1)
  String time;

  @HiveField(2)
  String image;

  @HiveField(3)
  String title;

  @HiveField(4)
  String description;
}

Future<void> getUser() async {
  var boxUser = await Hive.openBox('User');
  // boxUser.deleteFromDisk();
  if (boxUser.isEmpty) {
    //   // описываем метод получения данных пользователя
    var rng = new Random();
    var _person = User(id: rng.nextInt(10000), token: 'glavniy');
    boxUser.put('user', _person);
  }
  // // boxUser.clear();
  print('user start: ${boxUser.get('user').id}');
  // // boxUser.clear();
}

Future<void> getEvents() async {
  var boxEvents = await Hive.openBox('Events');
  if (boxEvents.isEmpty) {
    // описываем метод получения данных пользователя
    // var _event = [Event(), Event()];
    // boxEvents.put(0, _event);
  }
  final url = Uri.parse('https://events-hack.herokuapp.com/api/v1/events/1/');
  http.Response response = await http.get(url);
  print('Status code: ${response.statusCode}');
  print('Headers: ${response.headers}');
  print('Body: ${response.body}');
  Map<String, dynamic> event = json.decode(utf8.decode(response.bodyBytes));
  print(event['results'].length);
  for (int i = 0; i < event['results'].length; i++) {
    boxEvents.put(
        i,
        Event(
          location: event['results'][i]['address'],
          time: event['results'][i]['date_from'],
          image: event['results'][i]['image'],
          title: event['results'][i]['title'],
          description: event['results'][i]['description'],
        ));
  }
  // boxEvents.clear();
  // print('event start: ${boxEvents.get('event')[0].id}');
  // boxEvents.clear();
  // dynamic response = fetchAlbum([1]);
  // print(response.);
  // final parsed = json.decode(res);
  // print(parsed);
  // print(jsonDecode(res.body));
}

// Future<http.Response> fetchAlbum(List params) {
//   return http.get(Uri.parse(
//       'https://events-hack.herokuapp.com/api/v1/events/${params[0]}/'));
// }

// Future<Album> fetchAlbum() async {
//   final response = await http
//       .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     return Album.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load album');
//   }
// }

// class Album {
//   final int userId;
//   final int id;
//   final String title;

//   Album({
//     required this.userId,
//     required this.id,
//     required this.title,
//   });

//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//     );
//   }
// }

// {'count': 1,
//  'next': None,
//  'previous': None,
//  'results': [{'title': 'Концерт в парке',
//    'description': 'Интересный концерт в парке',
//    'image': 'https://events-hack.herokuapp.com/media/event_images/2021-06-13_12-11-12.png',
//    'spot_name': 'ЦПКиО',
//    'address': 'ул. Пушкина',
//    'is_free': False,
//    'date_from': '2021-06-01T18:00:00Z',
//    'date_to': '2021-06-30T18:00:00Z',
//    'restriction': 6,
//    'district_name': 'Центральный',
//    'spheres': [{'id': 1,
//      'sphere_name': 'Спектакли',
//      'created_at': '2021-06-13T11:08:56.859725Z',
//      'modified_at': '2021-06-13T11:08:56.859725Z'}],
//    'themes': [{'id': 1,
//      'theme_name': 'События в парках',
//      'created_at': '2021-06-13T11:10:30.234704Z',
//      'modified_at': '2021-06-13T11:10:30.235739Z'}]}]}

// class EventResponse {
//   int count;
//   String next;
//   String previous;
//   Data results;
// }

// class Results 0-

// локация и время фотка название и описание