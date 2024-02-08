import 'package:admin_panel/src/app/views/home_view_deteil/page_view_helper/alerts_widgets/about_lesons.dart';
import 'package:flutter/material.dart';

class Overview extends StatelessWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 25,
        bottom: 35,
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          AboutLesson(),
        ],
      ),
    );
  }
}
