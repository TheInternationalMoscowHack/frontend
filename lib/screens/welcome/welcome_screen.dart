import 'package:flutter/material.dart';
import 'package:mos_ru_app/screens/all_events/all_events.dart';
import 'package:mos_ru_app/screens/questions/widgets/answer_button.dart';
import 'package:mos_ru_app/screens/common_widgets/magic_button.dart';
import 'package:mos_ru_app/screens/common_widgets/rounded_button.dart';
import 'package:mos_ru_app/screens/questions/question1_screen.dart';
import 'package:mos_ru_app/screens/start/widgets/circular_indicator.dart';
import 'package:mos_ru_app/screens/start/widgets/logo_widget.dart';
import 'package:mos_ru_app/screens/start/widgets/title_widget.dart';
import 'package:mos_ru_app/theme/app_colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
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
                SizedBox(
                  height: 150,
                ),
                MagicButton(
                  text: "Подбери события",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (_) => const Question1Screen(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                RoundedButton(
                  text: "Покажи что есть",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (_) => AllEventsScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                //AnswerButton(text: "Вопрос 1"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
