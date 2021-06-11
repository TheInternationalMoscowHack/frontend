import 'package:flutter/material.dart';
import 'package:mos_ru_app/theme/app_colors.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bigWhite,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[],
            ),
          ),
        ),
      ),
    );
  }
}
