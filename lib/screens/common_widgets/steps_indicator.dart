import 'package:flutter/material.dart';
import 'package:mos_ru_app/theme/app_colors.dart';

class StepsIndicator extends StatelessWidget {
  final int totalNumber;
  final int currentNumber;

  const StepsIndicator(
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
              Container(
                //padding: const EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  color: ((i == currentNumber)
                      ? AppColors.actGray
                      : AppColors.lightlightGray),
                ),
                height: 2,
                width: 25,
              ),
              SizedBox(width: 3)
            ],
          ),
      ],
    );
  }
}
