import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:mos_ru_app/resourses/data.dart';
import 'package:mos_ru_app/screens/common_widgets/event_card.dart';
import 'package:mos_ru_app/screens/questions/widgets/answer_button.dart';
import 'package:mos_ru_app/screens/common_widgets/magic_button.dart';
import 'package:mos_ru_app/screens/common_widgets/rounded_button.dart';
import 'package:mos_ru_app/screens/questions/question1_screen.dart';
import 'package:mos_ru_app/screens/start/widgets/circular_indicator.dart';
import 'package:mos_ru_app/screens/start/widgets/logo_widget.dart';
import 'package:mos_ru_app/screens/start/widgets/title_widget.dart';
import 'package:mos_ru_app/theme/app_colors.dart';

class AllEventsScreen extends StatelessWidget {
  const AllEventsScreen({
    Key? key,
    // List<Event>? eventslist_,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var box = Hive.box('Events');
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.bigWhite,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                height: height * 0.9,
                width: width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.lightGray,
                      AppColors.bigWhite,
                    ],
                  ),
                ),
                child: Scrollbar(
                  isAlwaysShown: true,
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (c, i) => Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        EventCard(event: box.get(i)),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: MagicButton(
                  text: "?????????????? ??????????????",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (_) => const Question1Screen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
