import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Student feedback',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            CourseRating(),
          ],
        ));
  }
}

class CourseRating extends StatelessWidget {
  const CourseRating({super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> starsIcons = [
      Icons.star,
      Icons.star,
      Icons.star,
      Icons.star,
      Icons.star_half,
    ];
    return Container(
      height: 250,
      width: 850,
      color: Colors.green,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '4.7',
                style: TextStyle(
                    fontSize: 80,
                    color: Colors.orange[900],
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(
                    starsIcons[0],
                    color: Colors.yellow,
                  ),
                  Icon(
                    starsIcons[1],
                    color: Colors.yellow,
                  ),
                  Icon(
                    starsIcons[2],
                    color: Colors.yellow,
                  ),
                  Icon(
                    starsIcons[3],
                    color: Colors.yellow,
                  ),
                  Icon(
                    starsIcons[4],
                    color: Colors.yellow,
                  ),
                ],
              ),
              Text(
                'Course Rating',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange[900],
                ),
              )
            ],
          ),
          const Column(),
          const Column(),
        ],
      ),
    );
  }
}
