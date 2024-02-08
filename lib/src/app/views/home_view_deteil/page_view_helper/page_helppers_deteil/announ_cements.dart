import 'package:flutter/material.dart';

class AnnounCements extends StatelessWidget {
  const AnnounCements({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Center(
            child: Text(
              'No announcements posted yet',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
                'The instructor hasn’t added any announcements to this course yet. Announcements \n                      are used to inform you of updates or additions to the course.'),
          )
        ],
      ),
    );
  }
}
