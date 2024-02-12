import 'package:flutter/material.dart';

class InfoSeconAlert extends StatefulWidget {
  const InfoSeconAlert({super.key});

  @override
  State<InfoSeconAlert> createState() => _InfoSeconAlertState();
}

class _InfoSeconAlertState extends State<InfoSeconAlert> {
  List<String> frequency = [
    'Once',
    'Daily',
    'Weekly',
    'Monthly',
  ];
  int frequencyTapsChages = 0;
  int minutsTapsChages = 0;
  bool isOpenOnce = false;
  bool isOpenDaile = false;
  bool isOpenWeekly = false;
  bool isOpenMonthly = false;
  List<Widget> alertsList = [
    const OnceWidget(),
    const DailyWidgets(),
    const WeeklyWidgets(),
    const MonthlyWidget(),
  ];
  List<String> minuts = [
    '5min',
    '10min',
    '20min',
    '30min',
    '1час',
    'обычный',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Create an event',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Шаг 2 из 3',
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          const SizedBox(
            height: 40,
          ),
          const SizedBox(
            height: 230,
            width: 500,
            child: Card(
              borderOnForeground: false,
              shadowColor: Colors.black,
              color: Color(0xffF7F9FA),
              elevation: 5,
              surfaceTintColor: Colors.grey,
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.calendar_month),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Время учитьсяCpCp',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Полный учебный курс по веб-разработке 2024 года',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Ежедневно',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Уведомление о напоминании за 16 минут до  ',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '10 минут в 12:00 ',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '> Еще не добавлено в ваш календарь ',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Частота',
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 65,
            width: 600,
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: frequency.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            frequencyTapsChages = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          margin: const EdgeInsets.all(5),
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: frequencyTapsChages == index
                                ? Colors.white
                                : Colors.white54,
                            borderRadius: frequencyTapsChages == index
                                ? BorderRadius.circular(15)
                                : BorderRadius.circular(15),
                            border: frequencyTapsChages == index
                                ? Border.all(color: Colors.black)
                                : null,
                          ),
                          child: Center(
                            child: Text(
                              frequency[index],
                              style: TextStyle(
                                color: frequencyTapsChages == index
                                    ? Colors.black
                                    : Colors.grey,
                                fontSize:
                                    frequencyTapsChages == index ? 18 : 13,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: 500,
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return alertsList[frequencyTapsChages];
                },
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Продолжительность',
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          SizedBox(
            height: 65,
            width: 600,
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: minuts.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            minutsTapsChages = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          margin: const EdgeInsets.all(5),
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: minutsTapsChages == index
                                ? Colors.white
                                : Colors.white54,
                            borderRadius: minutsTapsChages == index
                                ? BorderRadius.circular(15)
                                : BorderRadius.circular(15),
                            border: minutsTapsChages == index
                                ? Border.all(color: Colors.black)
                                : null,
                          ),
                          child: Center(
                            child: Text(
                              minuts[index],
                              style: TextStyle(
                                color: minutsTapsChages == index
                                    ? Colors.black
                                    : Colors.grey,
                                fontSize: minutsTapsChages == index ? 18 : 13,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Время',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            height: 50,
            width: 200,
            child: Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Time',
                  suffixIcon: Icon(Icons.schedule),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 50,
            width: 500,
            child: Row(
              children: [
                Container(
                  color: Colors.black,
                  height: 50,
                  width: 200,
                  child: const Center(
                    child: Text(
                      'Notifikation',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Minuts',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  height: 50,
                  width: 200,
                  child: const Center(
                    child: Text(
                      'Minutes bifore',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Email notifications only work with Google Calendar.'),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'End date',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            height: 100,
            width: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose end date',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'MM/DD/YYYY',
                      suffixIcon: Icon(Icons.calendar_month),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}

class OnceWidget extends StatelessWidget {
  const OnceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
      width: 500,
      child: Expanded(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'MM/DD/YYYY',
            suffixIcon: Icon(Icons.calendar_month),
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}

class MonthlyWidget extends StatelessWidget {
  const MonthlyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
      width: 500,
      child: Expanded(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'MM/DD/YYYY',
            suffixIcon: Icon(Icons.calendar_month),
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}

class WeeklyWidgets extends StatefulWidget {
  const WeeklyWidgets({super.key});

  @override
  State<WeeklyWidgets> createState() => _WeeklyWidgetsState();
}

class _WeeklyWidgetsState extends State<WeeklyWidgets> {
  List<String> days = [
    'Su',
    'Mo',
    'Tu',
    'We',
    'Th',
    'Fr',
    'Sa',
  ];
  int WeeklyTapsChages = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 500,
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: days.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      WeeklyTapsChages = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    margin: const EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: WeeklyTapsChages == index
                            ? Colors.white
                            : Colors.white54,
                        borderRadius: WeeklyTapsChages == index
                            ? BorderRadius.circular(70)
                            : BorderRadius.circular(70),
                        border: WeeklyTapsChages == index
                            ? Border.all(color: Colors.black)
                            : null),
                    child: Center(
                      child: Text(
                        days[index],
                        style: TextStyle(
                          color: WeeklyTapsChages == index
                              ? Colors.black
                              : Colors.grey,
                          fontSize: WeeklyTapsChages == index ? 18 : 13,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class DailyWidgets extends StatelessWidget {
  const DailyWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
