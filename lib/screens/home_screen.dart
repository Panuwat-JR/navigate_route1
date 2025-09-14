import 'package:flutter/material.dart';
import 'package:flutter_provider/MessageProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_provider/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final msg = context.watch<MessageProvider>().message;
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(msg.isEmpty ? '' : msg, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<MessageProvider>().setMessage(
                  'this is data from home page',
                );

    
                Navigator.pushNamed(context, DetailScreen.routeName);
              },
              child: const Text('Go to Detail Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
