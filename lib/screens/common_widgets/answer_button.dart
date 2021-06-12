import 'package:flutter/material.dart';
import 'package:mos_ru_app/screens/common_widgets/rounded_button.dart';
import 'package:mos_ru_app/theme/app_colors.dart';
import 'package:mos_ru_app/theme/app_text_styles.dart';

// TapboxA manages its own state.

//------------------------- TapboxA ----------------------------------

class AnswerButton extends StatefulWidget {
  AnswerButton({Key? key}) : super(key: key);

  @override
  _TapboxAState createState() => _TapboxAState();
}

class _TapboxAState extends State<AnswerButton> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: onTap,
      child: Container(
        width: 570,
        height: 50,
        // decoration: BoxDecoration(
        //   color: color ?? AppColors.redMain,
        //   borderRadius: BorderRadius.all(
        //     Radius.circular(borderRadius),
        //   ),
        // ),
        // child: Padding(
        //   padding: const EdgeInsets.symmetric(
        //         vertical: 12.0,
        //         horizontal: 16.0,
        //       ),
        //   child: Center(
        //     child: Text(
        //       text,
        //       style: AppTextStyles.buttonheavy.copyWith(
        //             color: AppColors.bigWhite,
        //           ),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
