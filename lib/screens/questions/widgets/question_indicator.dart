import 'package:flutter/material.dart';
import 'package:mos_ru_app/screens/questions/widgets/question_screen.dart';
import 'package:mos_ru_app/theme/app_colors.dart';
import 'package:mos_ru_app/theme/app_text_styles.dart';

final List<String> questionsList = [
  'Место',
  'Дата',
  'Категория',
  'И ещё...',
];

class QuestionIndicator extends StatelessWidget {
  final int totalNumber;
  final int currentNumber;
  final List<int> progress;

  const QuestionIndicator(
      {Key? key,
      required this.totalNumber,
      required this.currentNumber,
      required this.progress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        for (var i = 0; i < totalNumber; i++)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //width: 70,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        //var k = i;
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (_) => const QuestionScreen(
                                current_number: 0,
                                current_question: 'text', // ПОТОМ ПРОПИСАТЬ!!!
                                current_variants: [
                                  '1',
                                  '2',
                                  '3'
                                ], // ПОТОМ ПРОПИСАТЬ!!!
                                progress: [
                                  1,
                                  0,
                                  0,
                                  0,
                                ] //progress,
                                ),
                          ),
                        );
                      },
                      child: Text(
                        questionsList[i],
                        style: ((i == currentNumber)
                            ? AppTextStyles.current_question
                            : ((progress[i] == 1))
                                ? AppTextStyles.other_question
                                : AppTextStyles.other_question_not_selected),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 15),
            ],
          ),
      ],
    );
  }
}
