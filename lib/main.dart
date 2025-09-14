import 'package:flutter/material.dart';
import 'package:flutter_provider/MessageProvider.dart';
import 'package:provider/provider.dart';

import 'package:flutter_provider/screens/detail_screen.dart';
import 'package:flutter_provider/screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => MessageProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        DetailScreen.routeName: (_) => const DetailScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
