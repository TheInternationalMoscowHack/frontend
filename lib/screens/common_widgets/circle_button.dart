import 'package:flutter/material.dart';

import 'package:mos_ru_app/theme/app_colors.dart';
import 'package:mos_ru_app/theme/app_text_styles.dart';

class CircleButtonForward extends StatelessWidget {
  final Function()? onTap;
  final Color? color;
  final TextStyle? textStyle;
  final EdgeInsets? padding;

  const CircleButtonForward({
    this.onTap,
    this.color,
    this.textStyle,
    this.padding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      elevation: 2.0,
      fillColor: AppColors.redMain,
      child: Icon(
        Icons.arrow_forward,
        size: 35.0,
        color: AppColors.bigWhite,
      ),
      padding: EdgeInsets.all(15.0),
      shape: CircleBorder(),
    );
  }
}

class CircleButtonBack extends StatelessWidget {
  final Function()? onTap;
  final Color? color;
  final TextStyle? textStyle;
  final EdgeInsets? padding;

  const CircleButtonBack({
    this.onTap,
    this.color,
    this.textStyle,
    this.padding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      elevation: 2.0,
      fillColor: AppColors.redMain,
      child: Icon(
        Icons.arrow_back,
        size: 35.0,
        color: AppColors.bigWhite,
      ),
      padding: EdgeInsets.all(15.0),
      shape: CircleBorder(),
    );
  }
}
