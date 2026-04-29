import 'package:flutter/material.dart';

class GestureExampleScreen extends StatefulWidget {
  const GestureExampleScreen({super.key});

  @override
  State<GestureExampleScreen> createState() => _GestureExampleScreenState();
}

class _GestureExampleScreenState extends State<GestureExampleScreen> {
  String _gestureStatus = 'No gesture detected';
  Color _boxColor = Colors.blue.shade100;

  void _handleTap() {
    setState(() {
      _gestureStatus = 'Tap detected';
      _boxColor = Colors.green.shade100;
    });
  }

  void _handleDoubleTap() {
    setState(() {
      _gestureStatus = 'Double tap detected';
      _boxColor = Colors.purple.shade100;
    });
  }

  void _handleLongPress() {
    setState(() {
      _gestureStatus = 'Long press detected';
      _boxColor = Colors.orange.shade100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gesture Examples'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // GestureDetector Examples
            const Text(
              'GestureDetector',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  // Gesture Status Display
                  Text(
                    _gestureStatus,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),

                  // Interactive Box with GestureDetector
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: _handleTap,
                        onDoubleTap: _handleDoubleTap,
                        onLongPress: _handleLongPress,
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: _boxColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              'Tap me!\nDouble tap me!\nLong press me!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // InkWell Examples
            const Text(
              'InkWell',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  // Basic InkWell
                  const Text('Basic InkWell'),
                  const SizedBox(height: 8),
                  Material(
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        child: const Text('Tap for ripple effect'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // InkWell with Custom Colors
                  const Text('Custom Colored InkWell'),
                  const SizedBox(height: 8),
                  Material(
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.purple.withAlpha(77),
                      highlightColor: Colors.purple.withAlpha(26),
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        child: const Text('Custom splash color'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // InkWell with Border Radius
                  const Text('InkWell with Border Radius'),
                  const SizedBox(height: 8),
                  Material(
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text('Rounded corners with ripple'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
