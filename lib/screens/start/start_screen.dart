import 'package:flutter/material.dart';
import 'package:mos_ru_app/screens/common_widgets/magic_button.dart';
import 'package:mos_ru_app/screens/common_widgets/rounded_button.dart';
import 'package:hive/hive.dart';
import 'package:mos_ru_app/screens/feed/feed_screen.dart';
import 'package:mos_ru_app/screens/start/widgets/circular_indicator.dart';
import 'package:mos_ru_app/screens/start/widgets/logo_widget.dart';
import 'package:mos_ru_app/screens/start/widgets/title_widget.dart';
import 'package:mos_ru_app/screens/welcome/welcome_screen.dart';
import 'package:mos_ru_app/theme/app_colors.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bigWhite,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 44.0, vertical: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                LogoWidget(),
                // LogoWodget использует png из за проблем с svg  файлом
                // флатерская библиотека просто не может его нормально отрисовать
                // SizedBox(height: 32.0),
                TitleWidget(),
                SizedBox(height: 10.0),
                CircularIndicatorWidget(),
                SizedBox(height: 45.0),
                MagicButton(
                  text: "Начнём",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (_) => const WelcomeScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 24.0),
                // Прверили шрифты. все норм
                IconButton(
                  icon: new Icon(Icons.feed),
                  // onPressed: () async {
                  //   var box = await Hive.openBox('testBox');
                  //   if (box.isEmpty) {
                  //     print('box_is_empty');
                  //     box.put('name', 'Basil');
                  //     box.put('age', 12);
                  //   } else {
                  //     print(
                  //         'in start screen name: ${box.get('name')} ${box.get('age')}');
                  //     box.clear();
                  //   }
                  // },
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (_) => const FeedScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
