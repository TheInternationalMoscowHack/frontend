import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

// part 'user.g.dart';

@HiveType(typeId: 0)
class User {
  User({required this.id, required this.token});

  @HiveField(0)
  BigInt id;

  @HiveField(1)
  String token;
}

@HiveType(typeId: 1)
class Event {
  Event({
    required this.id,
    required this.title,
    required this.status,
    required this.text,
    required this.image,
  });

  @HiveField(0)
  BigInt id;

  @HiveField(1)
  String title;

  @HiveField(2)
  bool status;

  @HiveField(3)
  String text;

  @HiveField(4)
  String image;
}
