import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import "package:hive_flutter/hive_flutter.dart";
import 'dart:math';

import 'package:mos_ru_app/screens/start/start_screen.dart';
// import 'package:mos_ru_app/theme/app_themes.dart';
import 'package:mos_ru_app/resourses/data.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Hive.initFlutter();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(EventAdapter());
  // // Hive.registerAdapter(UserAdapter());
  await getUser();
  // await getEvents();

  // final url = Uri.parse('https://events-hack.herokuapp.com/api/v1/events/1/');
  // http.Response response = await http.get(url);
  // print('Status code: ${response.statusCode}');
  // print('Headers: ${response.headers}');
  // print('Body: ${response.body}');
  // Map<String, dynamic> event = json.decode(utf8.decode(response.bodyBytes));
  // print(event['results'][0]['title']);

  // var box
  // Hive - наша база данных, в которой будут зраниться несколько листов
  // User - лист содержащий инфу о пользователе, не предполагается что он будет часто обновляться
  // Events - лист содержащий информацию о собтиях, будет обновлятья с каждым входом

  // подобное описание можной найти в описании
  // var box = await Hive.openBox('testBox');
  // box.put('name', 'David');
  // print('Name: ${box.get('name')}');

  // var box = await Hive.openBox('testBox');
  await SystemChrome.setPreferredOrientations(
    <DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  runApp(const App());
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MosRu',
      // theme: AppThemes.mainTheme,
      // запуск стартового экрана без использования темы
      home: const StartScreen(),
    );
  }
}

// class UserBox extends HiveObject {}
