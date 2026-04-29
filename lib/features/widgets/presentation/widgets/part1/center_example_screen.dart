import 'package:flutter/material.dart';

class CenterExampleScreen extends StatelessWidget {
  const CenterExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Center Example'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.orange.shade100,
          child: const Center(
            child: Text('Centered Text'),
          ),
        ),
      ),
    );
  }
}
