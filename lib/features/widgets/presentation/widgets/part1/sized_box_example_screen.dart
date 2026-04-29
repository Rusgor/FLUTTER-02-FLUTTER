import 'package:flutter/material.dart';

class SizedBoxExampleScreen extends StatelessWidget {
  const SizedBoxExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizedBox Example'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red.shade100,
              padding: const EdgeInsets.all(8.0),
              child: const Text('Left'),
            ),
            const SizedBox(width: 20),
            Container(
              color: Colors.blue.shade100,
              padding: const EdgeInsets.all(8.0),
              child: const Text('Right'),
            ),
          ],
        ),
      ),
    );
  }
}
