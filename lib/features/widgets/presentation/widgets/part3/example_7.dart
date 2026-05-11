// ignore_for_file: use_colored_box

import 'package:flutter/material.dart';

class UnderstandingConstraintsExample7 extends StatelessWidget {
  const UnderstandingConstraintsExample7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 7'),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          height: 200,
          width: 200,
          child: Container(
            height: 50,
            width: 100,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

// UnconstrainedBox - Знімаємо будь-які обмеження на child.
// На практиці використовується дуже рідко (Ніколи )
// З UnconstrainedBox та OverflowBox (коли maxValues теж double.infinity)
// не можна вказати double.infinity для child бо флаттер не може відмалювати

// OverflowBox - можно керувати максимальними та мінімальними розмірами child.
// І не буде помилок, які виникають при використанні UnconstrainedBox.

// Показати цікавий кейс з Column і OverflowBox. Три контейнери в Column.
// В центральному контейнері є ще один контейнер з OverflowBox та більшими
// розмірами ніж батьківський віджет
// Як відобразиться накладування на верхній віджет та на нижній
// Можна також розповісти про Transform.translate  на тому самому прикладі з
// трьома контейнерами

// Вхідні параметри:
// minWidth: 0.0,
// minHeight: 0.0,
// maxWidth: double.infinity,
// maxHeight: double.infinity,
