import 'package:admin_panel/src/app/views/home_view_deteil/page_view_helper/page_helppers_deteil/learning_view/widget/calenda_events_widget.dart';
import 'package:flutter/material.dart';

class LearningTool extends StatelessWidget {
  const LearningTool({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Learning reminders',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CalendaEventsWidget(),
          ],
        ),
      ),
    );
  }
}
