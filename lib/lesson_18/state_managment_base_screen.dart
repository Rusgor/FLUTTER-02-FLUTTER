import 'package:flutter/material.dart';

class StateManagmentBaseScreen extends StatelessWidget {
  const StateManagmentBaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('State Management')),
      body: const Center(child: Text('HW-18')),
    );
  }
}
