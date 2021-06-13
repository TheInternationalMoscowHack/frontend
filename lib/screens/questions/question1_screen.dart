import 'package:flutter/material.dart';
import 'package:mos_ru_app/screens/questions/widgets/answer_button.dart';
import 'package:mos_ru_app/screens/questions/widgets/little_header.dart';
import 'package:mos_ru_app/screens/common_widgets/magic_button.dart';
import 'package:mos_ru_app/screens/questions/widgets/question_indicator.dart';
import 'package:mos_ru_app/screens/common_widgets/rounded_button.dart';
import 'package:mos_ru_app/screens/questions/widgets/steps_indicator.dart';
import 'package:mos_ru_app/screens/start/widgets/circular_indicator.dart';
import 'package:mos_ru_app/screens/start/widgets/logo_widget.dart';
import 'package:mos_ru_app/screens/start/widgets/title_widget.dart';
import 'package:mos_ru_app/theme/app_colors.dart';
import 'package:mos_ru_app/theme/app_text_styles.dart';

class Question1Screen extends StatelessWidget {
  const Question1Screen({
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
                  height: 10,
                ),
                LittleHeaderWidget(),
                SizedBox(
                  height: 10,
                ),
                QuestionIndicator(currentNumber: 0, totalNumber: 4),
                SizedBox(
                  height: 5,
                ),
                //StepsIndicator(currentNumber: 0, totalNumber: 4),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Тут мы спрашиваем первый вопрос",
                  style: AppTextStyles.questionbig,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                AnswerButton(
                  text: "Вопрос 1",
                ),
                SizedBox(
                  height: 30,
                ),
                AnswerButton(
                  text: "Вопрос 2",
                ),
                SizedBox(
                  height: 30,
                ),
                AnswerButton(
                  text: "Вопрос 3",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
