import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WidgetsSecondPartScreen extends StatelessWidget {
  const WidgetsSecondPartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets Part 2'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          WidgetExampleCard(
            title: 'ДОМАШНІ ЗАВДАННЯ',
            description:
                'Сторінка по макету з Figma (lesson_12);\n'
                'Взаємодія віджетів та компонування (lesson_13)',

            // GO ROUTER
            onTap: () => context.go('/custom-widgets'),
          ),

          WidgetExampleCard(
            title: 'Stateless vs Stateful Widgets',
            description:
                'Understanding the fundamental types of widgets in Flutter and '
                'when to use each one.',

            // GO ROUTER
            onTap: () => context.go('/widget-types'),
          ),

          WidgetExampleCard(
            title: 'GestureDetector & InkWell',
            description:
                'Widgets for handling touch gestures and creating interactive '
                'elements with material design ink effects.',

            // GO ROUTER
            onTap: () => context.go('/gesture'),
          ),

          WidgetExampleCard(
            title: 'TextFields & TextFormField',
            description:
                'Input widgets for text entry with various styles, validation, '
                'and form integration capabilities.',

            // GO ROUTER
            onTap: () => context.go('/text-fields'),
          ),

          WidgetExampleCard(
            title: 'Images',
            description: 'Widgets for displaying images',

            // GO ROUTER
            onTap: () => context.go('/images'),
          ),
        ],
      ),
    );
  }
}

class WidgetExampleCard extends StatelessWidget {
  const WidgetExampleCard({
    required this.title,
    required this.description,
    required this.onTap,
    super.key,
  });

  final String title;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 8.0),

              Text(
                description,
                style: const TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
