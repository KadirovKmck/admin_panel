import 'package:flutter/material.dart';

class AboutLessonPayMent extends StatefulWidget {
  const AboutLessonPayMent({Key? key}) : super(key: key);

  @override
  _AboutLessonPayMentState createState() => _AboutLessonPayMentState();
}

class _AboutLessonPayMentState extends State<AboutLessonPayMent> {
  bool showDetails = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(
          height: 20,
          color: Colors.black,
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Плата',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            Column(
              children: [
                Text(
                  'Уровень: Новичок',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Участники: 75235',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Языки: английский',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Субтитры: Да',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Урок: 32',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Видео: всего 1,5 часа',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          height: 20,
          color: Colors.black,
        ),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 25,
            ),
            Text(
              'Плата',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 250,
            ),
            Column(
              children: [
                Text(
                  'Доступно для iOS и Android',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          height: 20,
          color: Colors.black,
        ),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 25,
            ),
            Text('Описание'),
            SizedBox(
              width: 250,
            ),
            Text(
                'Вы с нетерпением ждете создания курса \nс помощью Udemy, но не знаете, с чего начать? Вы хотите быть уверены, \nчто создаваемый вами курс понравится студентам? Тогда вы находитесь в правильном месте.')
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        if (showDetails)
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 200),
                child: Text(
                  'Представляем официальный курс Udemy о том, как создать онлайн-курс.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 335,
                ),
                child: Text(
                    'В этом официальном курсе мы проведем вас через рекомендуемый процесс\n создания курса и поделимся лучшими практиками преподавания и разработки\n инструкций, а также ресурсами, которые вы можетеs\nиспользовать, чтобы помочь вам спланировать, создать и опубликовать свой\nсобственный курс. Создание курса — это путешествие, но вам не обязательно\nидти его в одиночку! Мы здесь, чтобы сопровождать вас на протяжении всего вашего путешествия.'),
              ),
            ],
          ),
        InkWell(
          onTap: () {
            setState(() {
              // Инвертировать значение флага при нажатии кнопки
              showDetails = !showDetails;
            });
          },
          child: SizedBox(
              height: 25,
              width: 150,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    showDetails
                        ? const Text('Показать  меньше')
                        : const Text('Покозать болше'),
                    Icon(
                      showDetails
                          ? Icons.arrow_drop_up_sharp
                          : Icons.arrow_drop_down,
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
