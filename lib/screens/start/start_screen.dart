import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:mos_ru_app/screens/start/widgets/circular_indicator.dart';
import 'package:mos_ru_app/screens/start/widgets/logo_widget.dart';
import 'package:mos_ru_app/screens/start/widgets/title_widget.dart';
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
                SizedBox(height: 24.0),
                CircularIndicatorWidget(),
                // Прверили шрифты. все норм
                IconButton(
                  icon: new Icon(Icons.add),
                  onPressed: () async {
                    var box = await Hive.openBox('testBox');
                    print(
                        'in start screen name: ${box.get('name')} ${box.get('age')}');
                    // box.put('age', 12);

                    // print("add");
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
