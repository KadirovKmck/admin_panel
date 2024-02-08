import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PlayList extends StatefulWidget {
  const PlayList({Key? key}) : super(key: key);

  @override
  State<PlayList> createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  int chekInt = 0;

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
  late List<bool> isCheked; // Use late initialization for non-nullable variable

  @override
  void initState() {
    super.initState();

    // Initialize the list with false values
    isCheked = List.generate(
      lessonsName.length,
      (index) => false,
    );
  }

  void inkrement() {
    chekInt++;
    setState(() {});
  }

  void remuve() {
    chekInt--;
    setState(() {});
  }

  bool chek = false;
  List<Uri> urlLinksForWeb = [
    Uri.parse(
      'https://github.com/KadirovKmck',
    ),
    Uri.parse(
      'https://pub.dev/packages/url_launcher',
    ),
    Uri.parse(
      'https://pub.dev/packages/url_launcher',
    ),
    Uri.parse(
      'https://pub.dev/packages/url_launcher',
    ),
    Uri.parse(
      'https://pub.dev/packages/url_launcher',
    ),
    Uri.parse(
      'https://pub.dev/packages/url_launcher',
    ),
    Uri.parse(
      'https://pub.dev/packages/url_launcher',
    ),
    Uri.parse(
      'https://pub.dev/packages/url_launcher',
    ),
    Uri.parse(
      'https://pub.dev/packages/url_launcher',
    ),
    Uri.parse(
      'https://pub.dev/packages/url_launcher',
    ),
  ];

  Future<void> _launchUrl(context, index) async {
    if (!await launchUrl(
      urlLinksForWeb[index],
    )) {
      throw Exception('Could not launch $urlLinksForWeb');
    }
  }

  Future<void> _launchInBrowser(Uri url, context, index) async {
    if (await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: Text(
            '$chekInt/10 video',
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: lessonsName.length,
            itemBuilder: (context, index) {
              return Container(
                height: 80,
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
                        InkWell(
                          onTap: () {
                            setState(() {
                              isCheked[index] = !isCheked[index];
                              if (isCheked[index]) {
                                inkrement();
                              } else {
                                remuve();
                              }
                            });
                          },
                          child: Checkbox(
                            activeColor: Colors.black,
                            value: isCheked[index],
                            onChanged: (value) {
                              log('is working');

                              setState(() {
                                isCheked[index] = value!;
                                if (value) {
                                  inkrement();
                                } else {
                                  remuve();
                                }
                              });
                            },
                          ),
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
                      child: Row(
                        children: [
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
                          ),
                          const SizedBox(
                            width: 200,
                          ),
                          SizedBox(
                            height: 35,
                            width: 100,
                            child: PopupMenuButton<String>(
                              color: Colors.white,
                              offset: const Offset(240, 40),
                              constraints: const BoxConstraints.expand(
                                width: 204,
                                height: 50,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              tooltip: '',
                              icon: Container(
                                height: 35,
                                width: 100,
                                color: Colors.amber,
                                child: const Text('data'),
                              ),
                              onSelected: (value) {},
                              itemBuilder: (BuildContext context) {
                                return [
                                  PopupMenuItem(
                                    height: 5,
                                    value: 'item1',
                                    child: GestureDetector(
                                      onTap: () {
                                        // _launchUrl(context, index);
                                        _launchInBrowser(
                                          urlLinksForWeb[index],
                                          context,
                                          index,
                                        );
                                      },
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: lessonsName[index],
                                              style: const TextStyle(
                                                fontSize: 18,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ];
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
//   void launchURL(String url) {
//   // Implement your URL handling logic here
//   print('Launching URL: $url');
// }
// void launchURL(String url) {
//     // Implement your URL handling logic here
//     print('Launching URL: $url');

//     if (Platform.isIOS || Platform.isAndroid) {
//       // Open the URL using the default browser or an external app
//       launch(url);
//     } else {
//       print('Platform not supported for URL launching');
//       // Handle other platforms or provide a message
//     }
//   }
}

// ...

