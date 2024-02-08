import 'package:flutter/material.dart';

class InfoFirstAlert extends StatefulWidget {
  const InfoFirstAlert({super.key});

  @override
  State<InfoFirstAlert> createState() => _InfoFirstAlertState();
}

class _InfoFirstAlertState extends State<InfoFirstAlert> {
  int? groupValue = 3;

  @override
  void initState() {
    super.initState();
    setState(() {});
    groupValue = -1; // Initialize to -1, meaning none is open
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
          'Шаг 1 из 3',
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
        const SizedBox(
          height: 40,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Имя',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            Text(
              'Необязательный',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const TextField(
          decoration: InputDecoration(
            hintText: 'Time to learn!',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Row(
          children: [
            Text(
              'Курс',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Необязательный',
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          'Выберите один из последних курсов или выполните поиск среди своих \nкурсов.',
          style: TextStyle(fontSize: 15),
        ),
        ListTileWidget(
          lable: 'How to Create an Online Course: The official Udemey Course',
          onTap: () {
            setState(() {});
            groupValue = 0;
          },
          value: 0,
          groupValue: groupValue,
          onChanged: (value) {
            setState(() {});
            groupValue = value!;
          },
        ),
        ListTileWidget(
          lable: 'The Complete 2024 Web Devolopment Bootcamp',
          onTap: () {
            setState(() {});
            groupValue = 1;
          },
          value: 1,
          groupValue: groupValue,
          onChanged: (value) {
            setState(() {});
            groupValue = value!;
          },
        ),
        ListTileWidget(
          lable: 'Flutter & Dart - The Complete Guide [2024 Edition]',
          onTap: () {
            setState(() {});
            groupValue = 2;
          },
          value: 2,
          groupValue: groupValue,
          onChanged: (value) {
            setState(() {});
            groupValue = value!;
          },
        ),
        ListTileWidget(
          lable: 'None',
          onTap: () {
            setState(() {});
            groupValue = 3;
          },
          value: 3,
          groupValue: groupValue,
          onChanged: (value) {
            setState(() {});
            groupValue = value!;
          },
        ),
        const TextField(
          decoration: InputDecoration(
            hintText: 'search',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    required this.lable,
    required this.onTap,
    this.value,
    this.groupValue,
    this.onChanged,
    super.key,
  });

  final String lable;
  final int? value;
  final int? groupValue;
  final void Function(int?)? onChanged;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        horizontalTitleGap: 7,
        contentPadding: EdgeInsets.zero,
        leading: Radio(
          activeColor: const Color(0xff4224DB),
          value: value!,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        title: Text(
          lable,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: width * 0.01,
            color: const Color(0xff000000),
          ),
        ),
      ),
    );
  }
}
