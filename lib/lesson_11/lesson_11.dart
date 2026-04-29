import 'package:flutter/material.dart';

class Homework11Screen extends StatelessWidget {
  const Homework11Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'Lesson 11',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            // 1-й контейнер — тільки по висоті Expanded
            Expanded(
              child: SizedBox(
                width: 300,
                child: _buildCard(Colors.blue, Alignment.topLeft),
              ),
            ),

            const SizedBox(height: 8),

            // 2-й контейнер
            SizedBox(
              width: 300,
              height: 150,
              child: _buildCard(Colors.green, Alignment.center),
            ),

            const SizedBox(height: 8),

            // 3-й контейнер
            SizedBox(
              width: 300,
              height: 150,
              child: _buildCard(Colors.red, Alignment.bottomRight),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(Color color, Alignment alignment) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Align(
        alignment: alignment,
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.star, color: Colors.yellow),
            SizedBox(width: 10),
            Text(
              'Привіт, Flutter!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 10),
            Icon(Icons.star, color: Colors.yellow),
          ],
        ),
      ),
    );
  }
}
