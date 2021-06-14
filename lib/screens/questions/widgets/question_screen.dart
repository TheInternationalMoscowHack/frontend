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

class QuestionScreen extends StatelessWidget {
  final List<int> progress;
  final int current_number;
  final String current_question;
  final List<String> current_variants;

  const QuestionScreen({
    Key? key,
    required this.progress,
    required this.current_question,
    required this.current_variants,
    required this.current_number,
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
                QuestionIndicator(
                    progress: progress,
                    currentNumber: current_number,
                    totalNumber: 4),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  current_question,
                  style: AppTextStyles.questionbig,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                AnswerButton(
                  text: current_variants[0],
                  number: 1,
                ),
                SizedBox(
                  height: 30,
                ),
                AnswerButton(
                  text: current_variants[1],
                  number: 2,
                ),
                SizedBox(
                  height: 30,
                ),
                AnswerButton(
                  text: current_variants[2],
                  number: 3,
                ),
                SizedBox(
                  height: 50,
                ),
                Row()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
