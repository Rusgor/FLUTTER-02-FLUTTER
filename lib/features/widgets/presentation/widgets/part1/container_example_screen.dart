import 'package:flutter/material.dart';

class ContainerExampleScreen extends StatelessWidget {
  const ContainerExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Example'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            border: Border.fromBorderSide(
              BorderSide(
                color: Colors.blue,
                width: 2,
              ),
            ),
          ),
          child: const Center(
            child: Text('Container Example'),
          ),
        ),
      ),
    );
  }
}
