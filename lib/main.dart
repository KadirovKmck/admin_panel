import 'package:admin_panel/src/app/views/home_view.dart';
import 'package:admin_panel/src/Components/play_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main(List<String> args) async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PlaylistProvider(),
        )
      ],
      child: const MaterialApp(
        home: HomeView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
