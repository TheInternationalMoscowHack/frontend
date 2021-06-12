import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mos_ru_app/resourses/app_svg_icons.dart';

import 'package:mos_ru_app/resourses/app_svg_icons.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AppSvgIcons.logo);
  }
}
