import 'package:flutter/material.dart';
import 'package:mos_ru_app/resourses/app_svg_icons.dart';
import 'package:mos_ru_app/theme/app_text_styles.dart';

class LittleHeaderWidget extends StatelessWidget {
  const LittleHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              child: Image.asset(
                AppPngIcons.logo,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Досуг в несколько касаний',
              textAlign: TextAlign.center,
              style: AppTextStyles.header,
            ),
          ],
        ),
      ),
    );
  }
}
