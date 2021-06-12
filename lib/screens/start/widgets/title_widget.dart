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
    return Container(
      height: 100,
      width: 300,
      child: Row(
        children: [
          Text(
            'Досуг в несколько касаний',
            textAlign: TextAlign.center,
            style: AppTextStyles.header,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
              width: 25,
              height: 25,
              child: SvgPicture.asset(AppSvgIcons.magic_wand))
        ],
      ),
    );
  }
}
