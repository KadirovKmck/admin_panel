import 'package:flutter/material.dart';

class ComentariaListViewBulder extends StatefulWidget {
  const ComentariaListViewBulder({Key? key}) : super(key: key);

  @override
  State<ComentariaListViewBulder> createState() =>
      _ComentariaListViewBulderState();
}

class _ComentariaListViewBulderState extends State<ComentariaListViewBulder> {
  List<IconData> icons = [
    Icons.star,
    Icons.star,
    Icons.star,
    Icons.star,
    Icons.star,
  ];
  bool isCangesOne = false;
  bool isCangesTwo = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height,
      width: 800,
      child: Expanded(
        child: ListView.builder(
          itemCount: icons.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.blue,
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Melenna B.',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              icons[index],
                              color: Colors.amber,
                            ),
                            Icon(
                              icons[index],
                              color: Colors.amber,
                            ),
                            Icon(
                              icons[index],
                              color: Colors.amber,
                            ),
                            Icon(
                              icons[index],
                              color: Colors.amber,
                            ),
                            Icon(
                              icons[index],
                              color: Colors.amber,
                            ),
                            const Text(
                              '3 days ago ',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                        const Text(
                          'Fantastic guide. Very easy to follow.     \nWas this review helpful?',
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isCangesOne = !isCangesOne;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color:
                                      isCangesOne ? Colors.black : Colors.white,
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                ),
                                height: 50,
                                width: 50,
                                child: Center(
                                  child: Icon(
                                    Icons.thumb_up,
                                    color: isCangesOne
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isCangesTwo = !isCangesTwo;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color:
                                      isCangesTwo ? Colors.black : Colors.white,
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                ),
                                height: 50,
                                width: 50,
                                child: Center(
                                  child: Icon(
                                    Icons.thumb_down,
                                    color: isCangesTwo
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Divider(
                  height: 20,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
