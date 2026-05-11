import 'package:flutter/material.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/screens/widgets_first_part_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part2/images_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part2/gesture_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part2/text_field_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part2/widget_types_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part2/custom_widgets_example_screen.dart';

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
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                builder: (context) => CustomWidgetsExampleScreen(),
              ),
            ),
          ),
          WidgetExampleCard(
            title: 'Stateless vs Stateful Widgets',
            description:
                'Understanding the fundamental types of widgets in Flutter and '
                'when to use each one.',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                builder: (context) => const WidgetTypesExampleScreen(),
              ),
            ),
          ),
          WidgetExampleCard(
            title: 'GestureDetector & InkWell',
            description:
                'Widgets for handling touch gestures and creating interactive '
                'elements with material design ink effects.',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                builder: (context) => const GestureExampleScreen(),
              ),
            ),
          ),
          WidgetExampleCard(
            title: 'TextFields & TextFormField',
            description:
                'Input widgets for text entry with various styles, validation, '
                'and form integration capabilities.',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                builder: (context) => const TextFieldExampleScreen(),
              ),
            ),
          ),
          WidgetExampleCard(
            title: 'Images',
            description: 'Widgets for displaying images',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                builder: (context) => const ImageExampleScreen(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
