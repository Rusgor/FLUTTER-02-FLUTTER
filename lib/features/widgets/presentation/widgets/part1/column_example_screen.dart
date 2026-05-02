import 'package:flutter/material.dart';

class ColumnExampleScreen extends StatelessWidget {
  const ColumnExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Example'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: Center(
        child: ColoredBox(
          color: Colors.green.shade100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 100,
                color: Colors.purple.shade200,
                margin: const EdgeInsets.all(8.0),
                child: const Center(
                  child: Text(
                    'Top',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 100,
                color: Colors.orange.shade200,
                margin: const EdgeInsets.all(8.0),
                child: const Center(
                  child: Text(
                    'Middle',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 100,
                color: Colors.teal.shade200,
                margin: const EdgeInsets.all(8.0),
                child: const Center(
                  child: Text(
                    'Bottom',
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
