import 'package:flutter/material.dart';

class WidgetTypesExampleScreen extends StatefulWidget {
  const WidgetTypesExampleScreen({super.key});

  @override
  State<WidgetTypesExampleScreen> createState() =>
      _WidgetTypesExampleScreenState();
}

class _WidgetTypesExampleScreenState extends State<WidgetTypesExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless vs Stateful Widgets'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Stateless Widget Example
            Text(
              'Stateless Widget Example',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            StatelessExampleWidget(
              title: 'Welcome Message',
              message: 'This is a stateless widget!',
            ),

            SizedBox(height: 32),

            // Stateful Widget Example
            Text(
              'Stateful Widget Example',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            StatefulExampleWidget(
              title: 'Counter',
              message: 'This is a stateful widget!',
            ),
          ],
        ),
      ),
    );
  }
}

// Stateless Widget Example
class StatelessExampleWidget extends StatelessWidget {
  const StatelessExampleWidget({
    required this.title,
    required this.message,
    super.key,
  });

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    // MediaQuery.sizeOf(context);
    // Theme.of(context);
    // Localizations.localeOf(context);

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.blue.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(message),
        ],
      ),
    );
  }
}

// Stateful Widget Example
class StatefulExampleWidget extends StatefulWidget {
  const StatefulExampleWidget({
    required this.title,
    required this.message,
    super.key,
  });
  final String title;
  final String message;

  @override
  State<StatefulExampleWidget> createState() => _StatefulExampleWidgetState();
}

class _StatefulExampleWidgetState extends State<StatefulExampleWidget> {
  int _counter = 0;
  @override
  void initState() {
    super.initState();
    _counter = 0;
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.green.shade200),
      ),
      child: Column(
        children: [
          Text(
            'Counter: $_counter',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: const Text('Increment Counter'),
          ),
        ],
      ),
    );
  }
}
