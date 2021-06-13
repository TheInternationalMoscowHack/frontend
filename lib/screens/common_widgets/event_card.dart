import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mos_ru_app/resourses/app_svg_icons.dart';
import 'package:mos_ru_app/theme/app_text_styles.dart';

class EventCard extends StatelessWidget {
  final String name;

  const EventCard({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    // WidgetsFlutterBinding.ensureInitialized();
    // ScreenUtil.init(, designSize: Size(360, 720));
    // Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(left: 1, right: 1),
      child: Card(
        elevation: 2,
        margin: EdgeInsets.symmetric(horizontal: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 604 / 412,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          alignment: FractionalOffset.topCenter,
                          image: NetworkImage(
                            'https://picsum.photos/250?image=9',
                          ))),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                name,
                style: AppTextStyles.cardheader,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  child: SvgPicture.asset(AppSvgIcons.location),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Локация',
                  style: AppTextStyles.carddetails,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Text(
                    'Время',
                    style: AppTextStyles.carddetails,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 25,
                  height: 25,
                  child: SvgPicture.asset(AppSvgIcons.clock),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
