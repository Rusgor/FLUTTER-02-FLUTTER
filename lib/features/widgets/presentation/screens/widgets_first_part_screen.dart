import 'package:flutter/material.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/row_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/text_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/align_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/stack_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/center_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/column_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/scroll_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/buttons_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/padding_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/expanded_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/container_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/sized_box_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/progress_indicators_example_screen.dart';

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
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                builder: (context) => const ContainerExampleScreen(),
              ),
            ),
          ),
          WidgetExampleCard(
            title: 'Row',
            description:
                'A widget that displays its children in a horizontal array.',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                builder: (context) => const RowExampleScreen(),
              ),
            ),
          ),
          WidgetExampleCard(
            title: 'Column',
            description:
                'A widget that displays its children in a vertical array.',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                builder: (context) => const ColumnExampleScreen(),
              ),
            ),
          ),
          WidgetExampleCard(
            title: 'Expanded',
            description:
                'A widget that expands a child of a Row, Column, or Flex to '
                'fill the available space.',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                builder: (context) => const ExpandedExampleScreen(),
              ),
            ),
          ),
          WidgetExampleCard(
            title: 'Stack',
            description:
                'A widget that positions its childred on top of each other.',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                builder: (context) => const StackExampleScreen(),
              ),
            ),
          ),
          WidgetExampleCard(
            title: 'SizedBox',
            description:
                'A box with a specified size. Useful for creating '
                'empty spaces.',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                builder: (context) => const SizedBoxExampleScreen(),
              ),
            ),
          ),
          WidgetExampleCard(
            title: 'Padding',
            description: 'A widget that insets its child by the given padding.',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                builder: (context) => const PaddingExampleScreen(),
              ),
            ),
          ),
          WidgetExampleCard(
            title: 'Align',
            description: 'A widget that aligns its child within itself.',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                builder: (context) => const AlignExampleScreen(),
              ),
            ),
          ),
          WidgetExampleCard(
            title: 'Center',
            description: 'A widget that centers its child within itself.',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                builder: (context) => const CenterExampleScreen(),
              ),
            ),
          ),
          WidgetExampleCard(
            title: 'Text',
            description: 'A run of text with a single style.',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                builder: (context) => const TextExampleScreen(),
              ),
            ),
          ),
          WidgetExampleCard(
            title: 'Buttons',
            description:
                'Various types of buttons including Elevated, Text, Outlined, '
                'Icon, and Floating Action buttons.',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                builder: (context) => const ButtonsExampleScreen(),
              ),
            ),
          ),
          WidgetExampleCard(
            title: 'Scroll',
            description:
                'Examples of SingleChildScrollView and different types of '
                'ListView including builder, separated, '
                'and horizontal scrolling.',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                builder: (context) => const ScrollExampleScreen(),
              ),
            ),
          ),
          WidgetExampleCard(
            title: 'Progress Indicators',
            description:
                'Linear and Circular progress indicators that show progress or '
                'loading states.',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                builder: (context) => const ProgressIndicatorsExampleScreen(),
              ),
            ),
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
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
