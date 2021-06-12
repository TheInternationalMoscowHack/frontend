import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mos_ru_app/theme/app_colors.dart';

class AppTextStyles {
  static const TextStyle header = TextStyle(
    fontFamily: 'Helvetica',
    //fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    fontSize: 17.0,
    fontFeatures: <FontFeature>[
      // pnum
      FontFeature.proportionalFigures(),
      // lnum
      FontFeature.liningFigures(),
    ],
    color: AppColors.redMain,
  );

  static const TextStyle titleSmall = TextStyle(
    fontFamily: 'Helvetica',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
    fontFeatures: <FontFeature>[
      // pnum
      FontFeature.proportionalFigures(),
      // lnum
      FontFeature.liningFigures(),
    ],
    color: AppColors.lightGray,
  );

  const AppTextStyles._();
}
