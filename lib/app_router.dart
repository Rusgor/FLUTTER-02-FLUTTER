import 'package:go_router/go_router.dart';
import 'package:flutter_02_flutter/main.dart';
import 'package:flutter_02_flutter/widgets_main_screen.dart';
import 'package:flutter_02_flutter/lesson_11/lesson_11.dart';
import 'package:flutter_02_flutter/lesson_12/lesson_12.dart';
import 'package:flutter_02_flutter/lesson_13/lesson_13.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/row_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/screens/widgets_first_part_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/text_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/screens/widgets_second_part_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/align_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/stack_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/center_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/column_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/scroll_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part2/images_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/buttons_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/padding_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part2/gesture_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/expanded_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/container_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/sized_box_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part2/text_field_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part2/widget_types_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part2/custom_widgets_example_screen.dart';
import 'package:flutter_02_flutter/features/widgets/presentation/widgets/part1/progress_indicators_example_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    // =========================
    // HOME
    // =========================
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),

    // =========================
    // WIDGETS MAIN
    // =========================
    GoRoute(
      path: '/widgets',
      builder: (context, state) => const WidgetsScreen(),
    ),

    // =========================
    // WIDGETS PART 1
    // =========================
    GoRoute(
      path: '/widgets-part-1',
      builder: (context, state) => const WidgetsFirstPartScreen(),
    ),

    // =========================
    // WIDGETS PART 2
    // =========================
    GoRoute(
      path: '/widgets-part-2',
      builder: (context, state) => const WidgetsSecondPartScreen(),
    ),

    // =========================
    // HOMEWORKS
    // =========================
    GoRoute(
      path: '/custom-widgets',
      builder: (context, state) => CustomWidgetsExampleScreen(),
    ),

    // =========================
    // LESSONS
    // =========================
    GoRoute(
      path: '/lesson11',
      builder: (context, state) => const Homework11Screen(),
    ),

    GoRoute(
      path: '/lesson12',
      builder: (context, state) => const LessonTwelve(),
    ),

    GoRoute(
      path: '/lesson13',
      builder: (context, state) => const WidgetConstrainsTrainingScreen(),
    ),

    // =========================
    // PART 1 EXAMPLES
    // =========================
    GoRoute(
      path: '/container',
      builder: (context, state) => const ContainerExampleScreen(),
    ),

    GoRoute(
      path: '/row',
      builder: (context, state) => const RowExampleScreen(),
    ),

    GoRoute(
      path: '/column',
      builder: (context, state) => const ColumnExampleScreen(),
    ),

    GoRoute(
      path: '/expanded',
      builder: (context, state) => const ExpandedExampleScreen(),
    ),

    GoRoute(
      path: '/stack',
      builder: (context, state) => const StackExampleScreen(),
    ),

    GoRoute(
      path: '/sized-box',
      builder: (context, state) => const SizedBoxExampleScreen(),
    ),

    GoRoute(
      path: '/padding',
      builder: (context, state) => const PaddingExampleScreen(),
    ),

    GoRoute(
      path: '/align',
      builder: (context, state) => const AlignExampleScreen(),
    ),

    GoRoute(
      path: '/center',
      builder: (context, state) => const CenterExampleScreen(),
    ),

    GoRoute(
      path: '/text',
      builder: (context, state) => const TextExampleScreen(),
    ),

    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsExampleScreen(),
    ),

    GoRoute(
      path: '/scroll',
      builder: (context, state) => const ScrollExampleScreen(),
    ),

    GoRoute(
      path: '/progress-indicators',
      builder: (context, state) => const ProgressIndicatorsExampleScreen(),
    ),

    // =========================
    // PART 2 EXAMPLES
    // =========================
    GoRoute(
      path: '/widget-types',
      builder: (context, state) => const WidgetTypesExampleScreen(),
    ),

    GoRoute(
      path: '/gesture',
      builder: (context, state) => const GestureExampleScreen(),
    ),

    GoRoute(
      path: '/text-fields',
      builder: (context, state) => const TextFieldExampleScreen(),
    ),

    GoRoute(
      path: '/images',
      builder: (context, state) => const ImageExampleScreen(),
    ),
  ],
);
