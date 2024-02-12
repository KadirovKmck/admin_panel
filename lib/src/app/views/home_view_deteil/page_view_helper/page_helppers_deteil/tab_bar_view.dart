import 'package:admin_panel/src/app/views/home_view_deteil/page_view_helper/page_helppers_deteil/overview.dart';
import 'package:admin_panel/src/app/views/home_view_deteil/page_view_helper/page_helppers_deteil/announ_cements.dart';
import 'package:admin_panel/src/app/views/home_view_deteil/page_view_helper/page_helppers_deteil/learning_view/learning_tool.dart';
import 'package:admin_panel/src/app/views/home_view_deteil/page_view_helper/page_helppers_deteil/review_view/reviews.dart';
import 'package:flutter/material.dart';

class TabBarViews extends StatelessWidget {
  const TabBarViews({super.key});

  @override
  Widget build(BuildContext context) {
    bool isColorBlack = false;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 1,
          bottom: const TabBar(
            indicatorColor: Colors.black,
            dividerColor: Colors.grey,
            dividerHeight: 2,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle:
                TextStyle(decoration: TextDecoration.underline),
            tabs: [
              Text(
                'Overview',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Text(
                'Announcements',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Text(
                'Reviews',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Text(
                'Learning tools',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Text(
                'Q&A',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          viewportFraction: 1,
          children: [
            Overview(),
            AnnounCements(),
            Reviews(),
            LearningTool(),
            LearningTool(),
          ],
        ),
      ),
    );
  }
}
