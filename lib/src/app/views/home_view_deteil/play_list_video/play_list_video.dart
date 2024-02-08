import 'package:admin_panel/src/app/views/home_view_deteil/play_list_video/play_list_deteil/play_list_deteil.dart';
import 'package:flutter/material.dart';

class PlayListVideo extends StatefulWidget {
  const PlayListVideo({Key? key}) : super(key: key);

  @override
  _PlayListVideoState createState() => _PlayListVideoState();
}

class _PlayListVideoState extends State<PlayListVideo> {
  int ischeketNum = 0;
  bool isOpenVideoList = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      width: 390,
      color: Colors.amber,
      child: const PlayListBulder(),
    );
  }
}

class PlayListBulder extends StatefulWidget {
  const PlayListBulder({super.key});

  @override
  State<PlayListBulder> createState() => _PlayListBulderState();
}

class _PlayListBulderState extends State<PlayListBulder> {
  late List<bool> isOpeneLesson;

  bool isOpen = false;
  List<String> lessonsNumbers = [
    'lesson 1',
    'lesson 2',
    'lesson 3',
    'lesson 4',
    'lesson 5',
    'lesson 6',
    'lesson 7',
    'lesson 8',
    'lesson 9',
    'lesson 10',
  ];

  // int ischeketNum = 0;
  List<bool> isOpenSubVideosList = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  int openIndex = 0;
  @override
  void initState() {
    super.initState();
    openIndex = -1; // Initialize to -1, meaning none is open
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height,
      width: 390,
      child: Expanded(
        child: ListView.builder(
          itemCount: lessonsNumbers.length,
          itemBuilder: (context, index) {
            bool isOpen = index == openIndex;
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {});
                    if (openIndex == index) {
                      // If it's already open, close it
                      openIndex = -1;
                    } else {
                      // Otherwise, open this one and close others
                      openIndex = index;
                    }
                    setState(() {});
                  },
                  child: Container(
                    width: 390,
                    height: 45,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 1,
                          // offset: Offset(2, 2),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                lessonsNumbers[index],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  isOpen
                                      ? Icons.arrow_upward
                                      : Icons.arrow_downward,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  color: isOpen ? Colors.white : Colors.white,
                  width: isOpen ? 390 : 0,
                  height: isOpen ? height : 0,
                  curve: Curves.fastOutSlowIn,
                  // alignment: isOpenVideoList ? Alignment.center : Alignment.center,
                  child: isOpen ? const PlayList() : Container(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
