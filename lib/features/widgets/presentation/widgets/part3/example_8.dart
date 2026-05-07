import 'package:flutter/material.dart';

class UnderstandingConstraintsExample8 extends StatelessWidget {
  const UnderstandingConstraintsExample8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 8'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            final randomColor = Colors.primaries[index];
            // у ListView  приходять не обмежені constraints по висоті
            return Container(
              color: randomColor,
            );
          },
        ),
      ),
    );
  }
}

// LimitedBox - максимально рідко використовується.
// обмежує максимальні розміри child, тільки у тому випадку, якщо
// constraints не обмежені. Якщо порівнювати з ConstrainedBox, то ConstrainedBox
// обмежує максимальні розміри child, навіть якщо constraints обмежені.

// Показати приклад, коли constraints bounded.
