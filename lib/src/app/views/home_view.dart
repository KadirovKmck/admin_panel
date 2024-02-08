import 'package:admin_panel/src/app/views/home_view_deteil/play_list_video/play_list_video.dart';
import 'package:admin_panel/src/app/views/home_view_deteil/youtube_video/youtube_video.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
      body: Row(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                YoutubeVideo(),
              ],
            ),
          ),
          PlayListVideo(),
        ],
      ),
    );
  }
}
