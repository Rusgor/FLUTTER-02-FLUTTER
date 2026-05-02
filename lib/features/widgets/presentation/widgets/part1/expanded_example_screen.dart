import 'package:flutter/material.dart';

class ExpandedExampleScreen extends StatelessWidget {
  const ExpandedExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Example'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row example with Expanded
            Container(
              height: 100,
              margin: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ColoredBox(
                      color: Colors.red.shade200,
                      child: const Center(
                        child: Text(
                          'flex: 1',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ColoredBox(
                      color: Colors.green.shade200,
                      child: const Center(
                        child: Text(
                          'flex: 2',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: ColoredBox(
                      color: Colors.blue.shade200,
                      child: const Center(
                        child: Text(
                          'flex: 3',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            // Column example with Expanded
            Container(
              height: 300,
              width: 200,
              margin: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: ColoredBox(
                      color: Colors.purple.shade200,
                      child: const Center(
                        child: Text(
                          'flex: 1',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ColoredBox(
                      color: Colors.orange.shade200,
                      child: const Center(
                        child: Text(
                          'flex: 2',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: ColoredBox(
                      color: Colors.teal.shade200,
                      child: const Center(
                        child: Text(
                          'flex: 3',
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
