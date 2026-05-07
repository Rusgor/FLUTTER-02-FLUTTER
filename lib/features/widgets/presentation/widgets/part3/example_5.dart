// ignore_for_file: use_colored_box

import 'package:flutter/material.dart';

class UnderstandingConstraintsExample5 extends StatelessWidget {
  const UnderstandingConstraintsExample5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 5'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: Container(
        width: 100,
        height: 100,
        color: Colors.amber,
        child: const Text('Some random text with data'),
      ),
    );
  }
}

// В тебе є Container(100x100) в якому є Text.
// Спробуй обгорнути Text в FittedBox. Які зміни відбулися?
// Спробуй змінити ширину контейнеру до 400. Які зміни відбулися?
// Видали FittedBox. Які зміни відбулися?

// Note FittedBox can only scale a widget that is bounded (has non infinite
// width and height). Otherwise, it won’t render anything, and you will get
// an error in the console.
