import 'package:admin_panel/src/app/views/home_view_deteil/play_list_video.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubeVideo extends StatefulWidget {
  const YoutubeVideo({Key? key}) : super(key: key);

  @override
  State<YoutubeVideo> createState() => _YoutubeVideoState();
}

class _YoutubeVideoState extends State<YoutubeVideo> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'K',
    params: const YoutubePlayerParams(
      playlist: ['-JwkcRWiQIE', 'Wn5VAlpEtBE'], // Defining custom playlist
      startAt: Duration(seconds: 30),
      showControls: true,
      showFullscreenButton: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: 650,
              width: 1050,
              child: YoutubePlayerIFrame(
                controller: _controller,
                aspectRatio: 16 / 9,
              ),
            ),
            const PlayListVideo()
          ],
        ),
      ],
    );
  }
}
