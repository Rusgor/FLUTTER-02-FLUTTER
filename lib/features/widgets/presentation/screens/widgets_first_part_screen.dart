import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WidgetsFirstPartScreen extends StatelessWidget {
  const WidgetsFirstPartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets Part 1'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          WidgetExampleCard(
            title: 'Container',
            description:
                'Basic widget that allows you to create a box with a specified '
                'size, color, and border radius.',
            onTap: () => context.go('/container'),
          ),

          WidgetExampleCard(
            title: 'Row',
            description:
                'A widget that displays its children in a horizontal array.',
            onTap: () => context.go('/row'),
          ),

          WidgetExampleCard(
            title: 'Column',
            description:
                'A widget that displays its children in a vertical array.',
            onTap: () => context.go('/column'),
          ),

          WidgetExampleCard(
            title: 'Expanded',
            description:
                'A widget that expands a child of a Row, Column, or Flex to '
                'fill the available space.',
            onTap: () => context.go('/expanded'),
          ),

          WidgetExampleCard(
            title: 'Stack',
            description:
                'A widget that positions its childred on top of each other.',
            onTap: () => context.go('/stack'),
          ),

          WidgetExampleCard(
            title: 'SizedBox',
            description:
                'A box with a specified size. Useful for creating '
                'empty spaces.',
            onTap: () => context.go('/sized-box'),
          ),

          WidgetExampleCard(
            title: 'Padding',
            description: 'A widget that insets its child by the given padding.',
            onTap: () => context.go('/padding'),
          ),

          WidgetExampleCard(
            title: 'Align',
            description: 'A widget that aligns its child within itself.',
            onTap: () => context.go('/align'),
          ),

          WidgetExampleCard(
            title: 'Center',
            description: 'A widget that centers its child within itself.',
            onTap: () => context.go('/center'),
          ),

          WidgetExampleCard(
            title: 'Text',
            description: 'A run of text with a single style.',
            onTap: () => context.go('/text'),
          ),

          WidgetExampleCard(
            title: 'Buttons',
            description:
                'Various types of buttons including Elevated, Text, Outlined, '
                'Icon, and Floating Action buttons.',
            onTap: () => context.go('/buttons'),
          ),

          WidgetExampleCard(
            title: 'Scroll',
            description:
                'Examples of SingleChildScrollView and different types of '
                'ListView including builder, separated, '
                'and horizontal scrolling.',
            onTap: () => context.go('/scroll'),
          ),

          WidgetExampleCard(
            title: 'Progress Indicators',
            description:
                'Linear and Circular progress indicators that show progress or '
                'loading states.',
            onTap: () => context.go('/progress-indicators'),
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
