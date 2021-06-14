import 'package:flutter/material.dart';
import 'package:mos_ru_app/screens/questions/widgets/question_screen.dart';
import 'package:mos_ru_app/theme/app_colors.dart';
import 'package:mos_ru_app/theme/app_text_styles.dart';

class AnswerButton extends StatefulWidget {
  final String text;
  final int number;
  AnswerButton({Key? key, required this.text, required this.number})
      : super(key: key);

  @override
  _AnswerButtonState createState() => new _AnswerButtonState(text);
}

class _AnswerButtonState extends State<AnswerButton> {
  bool _active = false;

  String text;
  _AnswerButtonState(this.text);

  void _handleTap() {
    setState(() {
      _active = !_active;
      if (_active) {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (_) => const QuestionScreen(
                current_number: 0,
                current_question: 'text_new', // ПОТОМ ПРОПИСАТЬ!!!
                current_variants: [
                  '1',
                  '2',
                  '3'
                ], // ПОТОМ ПРОПИСАТЬ!!!
                progress: [
                  1,
                  1,
                  0,
                  0,
                ] //progress,
                ),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 570,
        height: 50,
        decoration: BoxDecoration(
          color: _active ? AppColors.actGreen : AppColors.redMain,
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 16.0,
          ),
          child: Center(
            child: Text(
              text,
              style: AppTextStyles.buttonheavy.copyWith(
                color: AppColors.bigWhite,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
