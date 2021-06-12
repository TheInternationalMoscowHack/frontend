import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mos_ru_app/resourses/app_svg_icons.dart';

import 'package:mos_ru_app/theme/app_text_styles.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Досуг в несколько касаний',
          textAlign: TextAlign.center,
          style: AppTextStyles.header,
        ),
        SizedBox(
          width: 24,
        ),
        SvgPicture.asset(AppSvgIcons.magic_wand)
      ],
    );
  }
}
