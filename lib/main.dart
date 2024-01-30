import 'package:admin_panel/src/app/views/home_view.dart';
import 'package:flutter/material.dart';

Future<void> main(List<String> args) async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
