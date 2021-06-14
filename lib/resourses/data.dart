// import 'dart:io';
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:hive/hive.dart';
part 'data.g.dart';

@HiveType(typeId: 0)
class User {
  User(
      {this.id = 0,
      this.token = 'a',
      this.answer = 'a',
      this.progress = const [0, 0, 0, 0, 0]});

  @HiveField(0)
  int id;

  @HiveField(1)
  String token;

  @HiveField(2)
  String answer;

  @HiveField(3)
  List<int> progress;
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
  if (boxUser.isEmpty) {
    var rng = new Random();
    var _person = User(id: rng.nextInt(10000), token: 'glavniy');
    boxUser.put('user', _person);
  }
}

Future<void> getEvents() async {
  var boxEvents = await Hive.openBox('Events');
  if (boxEvents.isEmpty) {
    print("is Empty");
  }
  final url = Uri.parse('https://events-hack.herokuapp.com/api/v1/events/1/');
  http.Response response = await http.get(url);
  print('Status code: ${response.statusCode}');
  print('Headers: ${response.headers}');
  print('Body: ${response.body}');
  Map<String, dynamic> event = json.decode(utf8.decode(response.bodyBytes));
  print(event['results'].length);
  for (int i = 0; i < event['results'].length; i++) {
    print("event $i");
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
