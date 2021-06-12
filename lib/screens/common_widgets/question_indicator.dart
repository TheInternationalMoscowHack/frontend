import 'package:flutter/material.dart';
import 'package:mos_ru_app/theme/app_colors.dart';
import 'package:mos_ru_app/theme/app_text_styles.dart';

final List<String> questionsList = [
  'Кто вы?',
  'Куда вы?',
  'Как вы?',
  'Финал',
];

class QuestionIndicator extends StatelessWidget {
  final int totalNumber;
  final int currentNumber;

  const QuestionIndicator(
      {Key? key, required this.totalNumber, required this.currentNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        for (var i = 0; i < totalNumber; i++)
          Row(
            children: [
              Text(
                questionsList[i],
                style: ((i == currentNumber)
                    ? AppTextStyles.current_question
                    : AppTextStyles.other_question),
              ),
              SizedBox(width: 15),
            ],
          ),
      ],
    );
  }
}
