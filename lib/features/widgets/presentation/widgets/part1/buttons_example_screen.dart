import 'package:flutter/material.dart';

class ButtonsExampleScreen extends StatelessWidget {
  const ButtonsExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Example'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Elevated Button',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Default Elevated Button'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
              ),
              child: const Text(
                'Custom Elevated Button',
              ),
            ),
            const SizedBox(height: 24),

            // Text Button Section
            const Text(
              'Text Button',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              child: const Text('Default Text Button'),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.purple,
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('Custom Text Button'),
            ),
            const SizedBox(height: 24),

            // Outlined Button Section
            const Text(
              'Outlined Button',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Default Outlined Button'),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.orange,
                side: const BorderSide(color: Colors.orange, width: 2),
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
              ),
              child: const Text('Custom Outlined Button'),
            ),
            const SizedBox(height: 24),

            // Icon Button Section
            const Text(
              'Icon Button',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                  color: Colors.red,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.star),
                  color: Colors.amber,
                  iconSize: 32,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                  color: Colors.blue,
                  tooltip: 'Settings',
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Button with Icon Section
            const Text(
              'Button with Icon',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.download),
              label: const Text('Download'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.share),
              label: const Text('Share'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green,
                side: const BorderSide(color: Colors.green),
              ),
            ),
            const SizedBox(height: 24),

            // Disabled Button Section
            const Text(
              'Disabled Button',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const ElevatedButton(
              onPressed: null,
              child: Text('Disabled Elevated Button'),
            ),
            const SizedBox(height: 8),
            const TextButton(
              onPressed: null,
              child: Text('Disabled Text Button'),
            ),
            const SizedBox(height: 8),
            const OutlinedButton(
              onPressed: null,
              child: Text('Disabled Outlined Button'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
