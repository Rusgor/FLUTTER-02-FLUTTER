import 'package:flutter/material.dart';

class RowExampleScreen extends StatelessWidget {
  const RowExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Example'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: Center(
        child: ColoredBox(
          color: Colors.red.shade100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red.shade200,
                margin: const EdgeInsets.all(8.0),
                child: const Center(
                  child: Text(
                    'Left',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green.shade200,
                margin: const EdgeInsets.all(8.0),
                child: const Center(
                  child: Text(
                    'Center',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue.shade200,
                margin: const EdgeInsets.all(8.0),
                child: const Center(
                  child: Text(
                    'Right',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
