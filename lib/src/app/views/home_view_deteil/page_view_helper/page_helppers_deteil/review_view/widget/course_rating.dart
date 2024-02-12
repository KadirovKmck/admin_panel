import 'package:flutter/material.dart';

class CourseRating extends StatelessWidget {
  const CourseRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<IconData> starsIcons = [
      Icons.star,
      Icons.star,
      Icons.star,
      Icons.star,
      Icons.star_half,
      Icons.star_border_outlined,
    ];
    return SizedBox(
      height: 170,
      width: 850,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '4.7',
                style: TextStyle(
                    fontSize: 80,
                    color: Colors.orange[900],
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(
                    starsIcons[0],
                    color: Colors.yellow,
                  ),
                  Icon(
                    starsIcons[1],
                    color: Colors.yellow,
                  ),
                  Icon(
                    starsIcons[2],
                    color: Colors.yellow,
                  ),
                  Icon(
                    starsIcons[3],
                    color: Colors.yellow,
                  ),
                  Icon(
                    starsIcons[4],
                    color: Colors.yellow,
                  ),
                ],
              ),
              Text(
                'Course Rating',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange[900],
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 25,
          ),
          Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 465,
                height: 10,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 15,
                    inactiveTrackColor: const Color(0xFFD9D9D9),
                    activeTrackColor: Colors.black87,
                    thumbColor: Colors.black87,
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: -0),
                    thumbShape: const RoundSliderThumbShape(
                      enabledThumbRadius: 8.3,
                    ),
                  ),
                  child: Slider(
                    max: 639,
                    value: 500,
                    onChanged: (value) {},
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 465,
                height: 10,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 15,
                    inactiveTrackColor: const Color(0xFFD9D9D9),
                    activeTrackColor: Colors.black87,
                    thumbColor: Colors.black87,
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: -0),
                    thumbShape: const RoundSliderThumbShape(
                      enabledThumbRadius: 8.3,
                    ),
                  ),
                  child: Slider(
                    max: 639,
                    value: 400,
                    onChanged: (value) {},
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 465,
                height: 10,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 15,
                    inactiveTrackColor: const Color(0xFFD9D9D9),
                    activeTrackColor: Colors.black87,
                    thumbColor: Colors.black87,
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: -0),
                    thumbShape: const RoundSliderThumbShape(
                      enabledThumbRadius: 8.3,
                    ),
                  ),
                  child: Slider(
                    max: 639,
                    value: 300,
                    onChanged: (value) {},
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 465,
                height: 10,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 15,
                    inactiveTrackColor: const Color(0xFFD9D9D9),
                    activeTrackColor: Colors.black87,
                    thumbColor: Colors.black87,
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: -0),
                    thumbShape: const RoundSliderThumbShape(
                      enabledThumbRadius: 8.3,
                    ),
                  ),
                  child: Slider(
                    max: 639,
                    value: 200,
                    onChanged: (value) {},
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 465,
                height: 10,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 15,
                    inactiveTrackColor: const Color(0xFFD9D9D9),
                    activeTrackColor: Colors.black87,
                    thumbColor: Colors.black87,
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: -0),
                    thumbShape: const RoundSliderThumbShape(
                      enabledThumbRadius: 8.3,
                    ),
                  ),
                  child: Slider(
                    max: 639,
                    value: 100,
                    onChanged: (value) {},
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    starsIcons[0],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[0],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[0],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[0],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[0],
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('70%'),
                ],
              ),
              Row(
                children: [
                  Icon(
                    starsIcons[0],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[0],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[0],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[0],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[5],
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('60%'),
                ],
              ),
              Row(
                children: [
                  Icon(
                    starsIcons[0],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[0],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[0],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[5],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[5],
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('50%'),
                ],
              ),
              Row(
                children: [
                  Icon(
                    starsIcons[0],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[0],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[5],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[5],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[5],
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('30%'),
                ],
              ),
              Row(
                children: [
                  Icon(
                    starsIcons[0],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[5],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[5],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[5],
                    color: Colors.orange,
                  ),
                  Icon(
                    starsIcons[5],
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('20%'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
