import 'package:flutter/material.dart';

class Homework11Screen extends StatefulWidget {
  const Homework11Screen({super.key});

  @override
  State<Homework11Screen> createState() => _Homework11ScreenState();
}

class _Homework11ScreenState extends State<Homework11Screen> {
  final Set<int> _activeCards = {};

  void _toggleCard(int index) {
    setState(() {
      if (_activeCards.contains(index)) {
        _activeCards.remove(index);
      } else {
        _activeCards.add(index);
      }
    });
  }

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
            // 1-й контейнер (Expanded + full height)
            Expanded(child: _buildCard(0, Colors.blue)),

            const SizedBox(height: 8),

            // 2-й контейнер
            _buildCard(1, Colors.green),

            const SizedBox(height: 8),

            // 3-й контейнер
            _buildCard(2, Colors.red),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(int index, Color baseColor) {
    final isActive = _activeCards.contains(index);
    final color = isActive ? _darken(baseColor) : baseColor;

    return GestureDetector(
      onTap: () => _toggleCard(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 300,
        height: 150,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
          boxShadow: isActive
              ? [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ]
              : [],
        ),
        child: Align(
          alignment: _getAlignment(index),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                isActive ? Icons.star : Icons.star_border,
                color: Colors.yellow,
              ),
              const SizedBox(width: 10),
              const Text(
                'Привіт, Flutter!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 10),
              Icon(
                isActive ? Icons.star : Icons.star_border,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Alignment _getAlignment(int index) {
    switch (index) {
      case 0:
        return Alignment.topLeft;
      case 1:
        return Alignment.center;
      case 2:
        return Alignment.bottomRight;
      default:
        return Alignment.center;
    }
  }

  Color _darken(Color color) {
    return Color.lerp(color, Colors.black, 0.25)!;
  }
}
