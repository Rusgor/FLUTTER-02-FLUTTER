import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_02_flutter/lesson_18/homework_cubit/cubit/counter_cubit.dart';

class HomeworkCubitScreen extends StatelessWidget {
  const HomeworkCubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const HomeworkCubitView(),
    );
  }
}

class HomeworkCubitView extends StatelessWidget {
  const HomeworkCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Homework Cubit',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      ),

      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text(
              '$state',
              style: const TextStyle(
                fontSize: 56,
                fontWeight: FontWeight.w900,
                color: Colors.amber,
                shadows: [
                  Shadow(
                    color: Colors.blue,
                    offset: Offset(1.5, 1.5),
                    blurRadius: 0,
                  ),
                ],
              ),
            );
          },
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'decrement',
            onPressed: () {
              context.read<CounterCubit>().decrement();
            },
            child: const Icon(Icons.remove),
          ),

          const SizedBox(width: 16),

          FloatingActionButton(
            heroTag: 'increment',
            onPressed: () {
              context.read<CounterCubit>().increment();
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
