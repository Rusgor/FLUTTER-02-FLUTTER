// ignore_for_file: use_colored_box

import 'package:flutter/material.dart';

class UnderstandingConstraintsExample1 extends StatelessWidget {
  const UnderstandingConstraintsExample1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

// 1. Змініть ширину та висоту контейнера(100 на 100). Чому це не працює?
// 2. Типове рішення — Center або інший віджет, який не має мінімальних обмежень
// 3. Показати alignments та як батько розміщує child у власному просторі.
// 4. Розказати про double.infinity
// 5. Як можливо перевірити обмеження — LayoutBuilder. Ця просто для розуміння
// 6. Задати double.infinity для висоти - потім для ширини.

// Додатково:
// Якщо в початковому прикладі додати в контейнер Text, то ми бачимо жовту
// лінію під текстом. Чому так?
