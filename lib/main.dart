import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import "package:hive_flutter/hive_flutter.dart";

import 'package:mos_ru_app/screens/start/start_screen.dart';
import 'package:mos_ru_app/theme/app_themes.dart';
import 'package:mos_ru_app/resourses/data.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Hive.initFlutter();
  await Hive.initFlutter();
  var box = await Hive.openBox('dataUser');
  if (box.isEmpty) {
    // описываем метод получения данных пользователя
    var _person = User(id: BigInt.from(1), token: 'a');
    box.add(_person);
  }

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
