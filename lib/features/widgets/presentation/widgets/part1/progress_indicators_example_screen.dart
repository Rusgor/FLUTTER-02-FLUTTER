import 'package:flutter/material.dart';

class ProgressIndicatorsExampleScreen extends StatefulWidget {
  const ProgressIndicatorsExampleScreen({super.key});

  @override
  State<ProgressIndicatorsExampleScreen> createState() =>
      _ProgressIndicatorsExampleScreenState();
}

class _ProgressIndicatorsExampleScreenState
    extends State<ProgressIndicatorsExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Linear Progress Indicator Examples
            const Text(
              'Linear Progress Indicator',
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
                  // Default Linear Progress Indicator
                  const Text('Default'),
                  const SizedBox(height: 8),
                  const LinearProgressIndicator(),
                  const SizedBox(height: 24),

                  // Colored Linear Progress Indicator
                  const Text('Colored'),
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    backgroundColor: Colors.grey.shade200,
                    valueColor: const AlwaysStoppedAnimation<Color>(
                      Colors.green,
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Circular Progress Indicator Examples
            const Text(
              'Circular Progress Indicator',
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
                  // Default Circular Progress Indicator
                  const Text('Default'),
                  const SizedBox(height: 8),
                  const CircularProgressIndicator(),
                  const SizedBox(height: 24),

                  // Colored Circular Progress Indicator
                  const Text('Colored'),
                  const SizedBox(height: 8),
                  CircularProgressIndicator(
                    backgroundColor: Colors.grey.shade200,
                    valueColor: const AlwaysStoppedAnimation<Color>(
                      Colors.purple,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Sized Circular Progress Indicator
                  const Text('Sized'),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: CircularProgressIndicator(
                      strokeWidth: 4,
                      backgroundColor: Colors.grey.shade200,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        Colors.teal,
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
