import 'package:admin_panel/src/app/views/home_view_deteil/widget/chek_box.dart';
import 'package:flutter/material.dart';

class PlayList extends StatefulWidget {
  const PlayList({super.key});

  @override
  State<PlayList> createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  @override
  Widget build(BuildContext context) {
    final List<String> lessonsName = [
      '1. Home view dart',
      '2. fire base flutter',
      '3. how to install flutter sdk ',
      '4. navigator push widget',
      '5. nav bar widget',
      '6. navigator pop widget',
      '7. app bar widget',
      '8. list view bilder widget',
      '9. Continer widget',
      '10. flutter api ',
    ];
    final List<String> lessonsTime = [
      '12min',
      '8min',
      '34min',
      '21min',
      '4min',
      '17min',
      '45min',
      '29min',
      '12min',
      '17min',
    ];

    bool? checkBox1 = false;

    return Expanded(
        child: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          height: 70,
          width: 390,
          decoration: const BoxDecoration(
            border: Border.symmetric(
              horizontal: BorderSide(color: Colors.grey),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.black,
                    value: checkBox1,
                    onChanged: (value) {
                      setState(() {
                        checkBox1 = value!;
                      });
                    },
                  ),
                  Text(
                    lessonsName[index],
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xff000000),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Row(children: [
                  const Icon(
                    Icons.tv_rounded,
                    size: 15,
                  ),
                  Text(
                    lessonsTime[index],
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xff000000),
                    ),
                  )
                ]),
              ),
            ],
          ),
        );
      },
    ));
  }
}
