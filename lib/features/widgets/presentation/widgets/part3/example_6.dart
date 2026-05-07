import 'package:flutter/material.dart';

class UnderstandingConstraintsExample6 extends StatelessWidget {
  const UnderstandingConstraintsExample6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 6'),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 200,
            minWidth: 200,
          ),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}

// Розказати, що таке ConstrainedBox.
// Показати constraints у Container.
// Найчастіше використовують саме min values - тому, що максимальні розміри
// і так можуть бути встановлені батьківським віджетом.

// Дуже важливо - A widget that imposes additional constraints
// on its child.
// 1 приклад. Додати Container з розміром 300 на 300 над ConstrainedBox
// 2 приклад. Додати Row з Expanded і ConstrainedBox
