import 'package:flutter/material.dart';
import 'package:flutter_provider/MessageProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_provider/screens/home_screen.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detail';
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final msg = context.watch<MessageProvider>().message;
    return Scaffold(
      appBar: AppBar(title: Text('Detail Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(msg.isEmpty ? '' : msg, style: const TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<MessageProvider>().setMessage(
                  'this is data from detail page',
                );

                Navigator.popUntil(
                  context,
                  ModalRoute.withName(HomeScreen.routeName),
                );
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
