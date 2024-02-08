import 'package:flutter/material.dart';

class TextAboutLessons extends StatelessWidget {
  const TextAboutLessons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Об этом курсе',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          'Используйте наши рекомендуемые лучшие практики для планирования,\nсоздания и публикации хорошо продуманного высококачественного курса\nUdemy.',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
