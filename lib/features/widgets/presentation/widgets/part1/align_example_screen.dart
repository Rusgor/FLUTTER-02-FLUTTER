import 'package:flutter/material.dart';

class AlignExampleScreen extends StatelessWidget {
  const AlignExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align Example'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.purple.shade100,
          child: const Align(
            alignment: Alignment.bottomRight,
            child: Text('Aligned Text'),
          ),
        ),
      ),
    );
  }
}
