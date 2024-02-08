import 'package:admin_panel/src/app/views/home_view_deteil/page_view_helper/page_helppers_deteil/tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubeVideo extends StatefulWidget {
  const YoutubeVideo({Key? key}) : super(key: key);

  @override
  State<YoutubeVideo> createState() => _YoutubeVideoState();
}

class _YoutubeVideoState extends State<YoutubeVideo> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'p-Xs_GHIi2Q',
    params: const YoutubePlayerParams(
      playlist: [
        '-JwkcRWiQIE',
        'Wn5VAlpEtBE',
        'p-Xs_GHIi2Q',
      ], // Defining custom playlist
      startAt: Duration(seconds: 30),
      showControls: true,
      showFullscreenButton: true,
    ),
  );
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 650,
                width: 1050,
                child: YoutubePlayerIFrame(
                  controller: _controller,
                  aspectRatio: 16 / 9,
                ),
              ),
              // const PageViewHelper()
              SizedBox(height: height, width: 1050, child: const TabBarViews())
            ],
          ),
        ),
      ],
    );
  }
}
