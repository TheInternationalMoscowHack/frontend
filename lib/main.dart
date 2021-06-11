import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:mos_ru_app/screens/start/start_screen.dart';
import 'package:mos_ru_app/theme/app_themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
      home: const StartScreen(),
    );
  }
}
