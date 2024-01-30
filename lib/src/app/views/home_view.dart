import 'package:admin_panel/src/app/views/home_view_deteil/youtube_video.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          YoutubeVideo(),
        ],
      ),
    );
  }
}
