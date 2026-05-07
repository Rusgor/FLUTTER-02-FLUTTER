// ignore_for_file: use_colored_box

import 'package:flutter/material.dart';

class UnderstandingConstraintsExample3 extends StatelessWidget {
  const UnderstandingConstraintsExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 3'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.orange,
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}

// В тебе є Column з одним child - Container.
// 1. Спробуй змінити ширину контейнеру до 4000. Як бачиш, помилки немає.
// 2. Ширину поверни до початкового значення (100).
// 3. Спробуй змінити висоту контейнеру до 4000. Помилка вже є. Обгорни
// контейнер в LayoutBuilder. Подивись які обмеження для своїх child надає
// Column.
// 4. Обгорни Container в Expanded.
// 5. Поверни висоту контейнеру до значення 100. Щось змінилось?
// 6. Заміни Expanded на Flexible. Знову додай висоту 4000
// 7. Подумай в чому різниця між Expanded і Flexible.
// 8. Поверни висоту контейнеру до початкового значення (100) та видали Flexible
// 9. Під контейнером додай ListView. З двома текстовими віджетами.
// Подумай, чому в тебе помилка і які варіанти є щоб вирішити.
// Два основних. 1. Задати висоту ListView. 2. Обгорнути ListView в Expanded/Flexible
