import 'package:admin_panel/src/app/views/home_view_deteil/page_view_helper/alerts_widgets/about_lesson_pay_ment.dart';
import 'package:admin_panel/src/app/views/home_view_deteil/page_view_helper/alerts_widgets/info_first_alert.dart';
import 'package:admin_panel/src/app/views/home_view_deteil/page_view_helper/alerts_widgets/info_second_alert.dart';
import 'package:admin_panel/src/app/views/home_view_deteil/page_view_helper/alerts_widgets/text_about_lessons.dart';
import 'package:flutter/material.dart';

class AboutLesson extends StatefulWidget {
  const AboutLesson({super.key});

  @override
  State<AboutLesson> createState() => _AboutLessonState();
}

class _AboutLessonState extends State<AboutLesson> {
  bool change = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        change
            ? Container()
            : Container(
                height: 150,
                width: 1000,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey),
                ),
                padding: const EdgeInsets.all(15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.alarm,
                      size: 45,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Schedule learning time',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                            'Learning a little each day adds up. Research shows that students who make learning a habit are more likely to reach their goals. \nSet time aside to learn and get reminders using your learning scheduler.'),
                        const SizedBox(
                          height: 9,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      SingleChildScrollView(
                                          child: AlertSecond(context)),
                                );
                              },
                              child: Container(
                                height: 30,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Center(
                                    child: Text(
                                  'Get started',
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialogAboutLessoons(context),
                                );
                              },
                              child: Container(
                                height: 30,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Center(
                                    child: Text(
                                  'Dismiss',
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
        const SizedBox(
          height: 15,
        ),
        const Padding(
          padding: EdgeInsets.only(right: 400),
          child: TextAboutLessons(),
        ),
        const AboutLessonPayMent(),
      ],
    );
  }

  AlertDialog AlertDialogForTimeLesson(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      icon: const InfoFirstAlert(),
      actions: <Widget>[
        InkWell(
          onTap: () {
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertSecond(context),
            );
          },
          child: Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ),
      ],
    );
  }

  AlertDialog AlertSecond(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const InfoSeconAlert(),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  AlertDialog AlertDialogAboutLessoons(BuildContext context) {
    return AlertDialog(
      title: const Text('AlertDialog Title'),
      content: const Text('AlertDialog description'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, 'OK');
            change = !change;
            setState(() {});
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
