import 'package:flutter/material.dart';

class PaddingExampleScreen extends StatelessWidget {
  const PaddingExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding Example'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: const Text('Text'),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text('Some text'),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: const Text('Text'),
            ),
          ],
        ),
      ),
    );
  }
}
