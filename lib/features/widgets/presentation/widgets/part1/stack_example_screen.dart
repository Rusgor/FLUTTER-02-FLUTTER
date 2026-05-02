import 'package:flutter/material.dart';

class StackExampleScreen extends StatelessWidget {
  const StackExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Example'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Basic Stack Example
            const Text(
              'Basic Stack',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue.shade100,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.red.shade200,
                      child: const Center(
                        child: Text(
                          'Top Left',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 100,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green.shade200,
                      child: const Center(
                        child: Text(
                          'Bottom Right',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Stack with Alignment Example
            const Text(
              'Stack with Alignment',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
                color: Colors.green.shade100,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.orange.shade200,
                      child: const Center(
                        child: Text(
                          'Center',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.teal.shade200,
                      child: const Center(
                        child: Text(
                          'Top',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Stack with Overflow Example
            const Text(
              'Stack with Overflow',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
                color: Colors.indigo.shade100,
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -20,
                    left: -20,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.pink.shade200,
                      child: const Center(
                        child: Text(
                          'Overflow',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -20,
                    right: -20,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.amber.shade200,
                      child: const Center(
                        child: Text(
                          'Overflow',
                          style: TextStyle(color: Colors.white),
                        ),
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
