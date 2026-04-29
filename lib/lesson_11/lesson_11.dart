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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCard(Colors.blue, Alignment.bottomRight),
            const SizedBox(height: 8),
            _buildCard(Colors.green, Alignment.bottomRight),
            const SizedBox(height: 8),
            _buildCard(Colors.red, Alignment.bottomRight),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(Color color, Alignment alignment) {
    return Container(
      width: 300,
      height: 150,
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
