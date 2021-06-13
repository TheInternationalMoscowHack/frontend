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

// class UserAdapter extends TypeAdapter<User> {
//   @override
//   final id = 0;
//   final token = 'a';

//   @override
//   User read(BinaryReader reader) {
//     return User()
//       ..id = reader.read()
//       ..token = reader.read();
//   }

//   @override
//   void write(BinaryWriter writer, User obj) {
//     writer.write(obj.id);
//     writer.write(obj.token);
//   }

//   @override
//   // TODO: implement typeId
//   int get typeId => throw UnimplementedError();
// }

@HiveType(typeId: 1)
class Event {
  Event({
    this.id = 0,
    this.title = 'a',
    this.status = false,
    this.text = 'a',
    this.image = 'a',
  });

  @HiveField(0)
  int id;

  @HiveField(1)
  String title;

  @HiveField(2)
  bool status;

  @HiveField(3)
  String text;

  @HiveField(4)
  String image;
}

Future<void> getUser() async {
  var boxUser = await Hive.openBox('dataUser');
  boxUser.clear();
  if (boxUser.isEmpty) {
    // описываем метод получения данных пользователя
    var rng = new Random();
    var _person = User(id: rng.nextInt(10000), token: 'glavniy');
    boxUser.put('user', _person);
  }
  print('user start: ${boxUser.get('user').id}');
  boxUser.clear();
}

Future<void> getEvents() async {
  var boxEvents = await Hive.openBox('Events');
  if (boxEvents.isEmpty) {
    // описываем метод получения данных пользователя
    var _event = [Event(id: 13), Event(id: 14)];
    boxEvents.put('event', _event);
  }
  print('event start: ${boxEvents.get('event')[0].id}');
  boxEvents.clear();
  dynamic res = fetchAlbum([1]);
  final Map parsed = json.decode(res);

  print(parsed['count']);
}

Future<http.Response> fetchAlbum(List params) {
  return http.get(Uri.parse(
      'https://events-hack.herokuapp.com/api/v1/events/${params[0]}/'));
}
