// ignore_for_file: use_colored_box

import 'package:flutter/material.dart';

class UnderstandingConstraintsExample4 extends StatelessWidget {
  const UnderstandingConstraintsExample4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 4'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: Row(
        children: [
          Container(
            color: Colors.orange,
            height: 100,
            width: 100,
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              child: ListView.builder(
                itemCount: 300,
                itemBuilder: (context, index) {
                  return Text('Item $index');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// В тебе є Row з одним child - Container.
// 1. Спробуй змінити висоту контейнеру до 4000. Як бачиш, помилки вже немає.
// 2. Висоту поверни до початкового значення (100).
// 3. Спробуй змінити ширину контейнеру до 4000. Помилка вже є.
// 4. Обгорни Container в Expanded.
// 5. Поверни ширину контейнеру до значення 100. Щось змінилось?
// 6. Заміни Expanded на Flexible.
// 7. Знов додай ширину 4000
// 8. Подумай в чому різниця між Expanded і Flexible.
// 9. Поверни ширину контейнеру до початкового значення (100) та видали Flexible
// 10. Під контейнером додай ListView. З двома текстовими віджетами.
// Ось тут, я думаю, ти думав, що помилки не буде. Але це не так. Подумай
// як пофіксати. Два основних.
// Задати висоту ListView або обгорнути ListView в Expanded/Flexible
