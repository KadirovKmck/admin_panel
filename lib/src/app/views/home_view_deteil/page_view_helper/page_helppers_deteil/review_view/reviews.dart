import 'package:admin_panel/src/app/views/home_view_deteil/page_view_helper/page_helppers_deteil/review_view/widget/comentaria_list_view_bulder.dart';
import 'package:admin_panel/src/app/views/home_view_deteil/page_view_helper/page_helppers_deteil/review_view/widget/course_rating.dart';
import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
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
              Text(
                'Reviews',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 60,
                width: 850,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 700,
                      child: Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Time',
                            suffixIcon: Icon(
                              Icons.search,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Filter ratings'),
                        SizedBox(
                          height: 40,
                          width: 100,
                          child: Text(
                            'All retings',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ComentariaListViewBulder(),
            ],
          )),
    );
  }
}
