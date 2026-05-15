import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StateManagmentBaseScreen extends StatelessWidget {
  const StateManagmentBaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'State Management',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/homework-cubit'),
              child: const Text('Cubit Example'),
            ),

            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () => context.go('/homework-bloc'),
              child: const Text('Bloc Example'),
            ),
          ],
        ),
      ),
    );
  }
}
