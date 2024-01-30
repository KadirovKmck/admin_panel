import 'package:admin_panel/src/app/views/home_view_deteil/play_list_deteil.dart';
import 'package:flutter/material.dart';

class PlayListVideo extends StatefulWidget {
  const PlayListVideo({Key? key}) : super(key: key);

  @override
  _PlayListVideoState createState() => _PlayListVideoState();
}

class _PlayListVideoState extends State<PlayListVideo> {
  bool isOpenVideoList = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      width: 390,
      color: Colors.amber,
      child: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isOpenVideoList = !isOpenVideoList;
                });
              },
              child: Container(
                width: 390,
                height: 60,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x26000000),
                      blurRadius: 8,
                      offset: Offset(2, 2),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Flutter & Dart - The Complete Guide \n[2024 Edition]',
                            style: TextStyle(
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
                                isOpenVideoList
                                    ? Icons.arrow_upward
                                    : Icons.arrow_downward,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              color: isOpenVideoList ? Colors.white : Colors.white,
              width: isOpenVideoList ? 390 : 0,
              height: isOpenVideoList ? 650 : 0,
              curve: Curves.fastOutSlowIn,
              alignment: isOpenVideoList ? Alignment.center : Alignment.center,
              child: isOpenVideoList ? const PlayList() : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
