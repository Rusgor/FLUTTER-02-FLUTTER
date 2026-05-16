import 'cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeworkCubitScreen extends StatelessWidget {
  const HomeworkCubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,

        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue.shade100,
          title: const Text(
            'Cubit Counter App',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),

        body: Center(
          child: BlocBuilder<CounterCubit, int>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
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
                  ),

                  const SizedBox(height: 40),

                  ElevatedButton(
                    onPressed: () {
                      context.read<CounterCubit>().increment();
                    },

                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(140, 56),
                    ),

                    child: const Text(
                      '+',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      context.read<CounterCubit>().decrement();
                    },

                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(140, 56),
                    ),

                    child: const Text(
                      '-',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
