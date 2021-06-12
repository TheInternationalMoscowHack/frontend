import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import "package:hive_flutter/hive_flutter.dart";

import 'package:mos_ru_app/screens/start/start_screen.dart';
// import 'package:mos_ru_app/theme/app_themes.dart';
import 'package:mos_ru_app/resourses/data.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Hive.initFlutter();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(EventAdapter());
  // Hive.registerAdapter(UserAdapter());
  var boxUser = await Hive.openBox('dataUser');
  boxUser.clear();
  if (boxUser.isEmpty) {
    // описываем метод получения данных пользователя
    var _person = User(id: 12, token: 'glavniy');
    boxUser.put('user', _person);
  }
  print('user start: ${boxUser.get('user').id}');
  await getEvents();
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

Future<void> getEvents() async {
  var boxEvents = await Hive.openBox('Events');
  if (boxEvents.isEmpty) {
    // описываем метод получения данных пользователя
    var _event = [Event(id: 13), Event(id: 14)];
    boxEvents.put('event', _event);
  }
  print('event start: ${boxEvents.get('event')[0].id}');
  boxEvents.clear();
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
