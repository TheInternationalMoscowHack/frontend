import 'package:flutter/material.dart';
import 'package:mos_ru_app/screens/common_widgets/event_card.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          color: Colors.grey,
          width: 320,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //EventCard(name: "Вечеринка у Децла"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [Text('Название'), Text('Локация')],
                  ),
                  Text('data')
                ],
              )
            ],
          ),
        ),
      ),
    )));
  }
}
