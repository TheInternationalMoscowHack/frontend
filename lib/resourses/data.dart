import 'dart:io';

import 'package:hive/hive.dart';
part 'data.g.dart';

// @HiveType(typeId: 0)
// class User extends HiveObject {
//   User({this.id = 0, this.token = 'a'});

//   @HiveField(0)
//   int id;

//   @HiveField(1)
//   String token;
// }

@HiveType(typeId: 0)
class User {
  User({this.id = 0, this.token = 'a'});

  @HiveField(0)
  int id;

  @HiveField(1)
  String token;
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
