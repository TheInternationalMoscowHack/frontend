import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mos_ru_app/resourses/app_svg_icons.dart';

// import 'package:mos_ru_app/resourses/app_svg_icons.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Image.asset(
        AppPngIcons.logo,
      ),
    );
  }
}
