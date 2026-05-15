import 'package:flutter/material.dart';

class HomeworkBlocScreen extends StatelessWidget {
  const HomeworkBlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Homework Bloc')),
      body: const Center(child: Text('Bloc Screen')),
    );
  }
}
