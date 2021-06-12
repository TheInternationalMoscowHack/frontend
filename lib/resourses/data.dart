import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class User {
  User({required this.id, required this.token});

  @HiveField(0)
  BigInt id;

  @HiveField(1)
  String token;
}
