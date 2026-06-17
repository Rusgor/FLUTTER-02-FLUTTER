import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'lesson_19/bloc/rate_app_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'lesson_19/widgets/success_snack_bar.dart';
import 'package:flutter_02_flutter/app_router.dart';

void main() {
  runApp(const FlutterWidgetsApp());
}

class FlutterWidgetsApp extends StatelessWidget {
  const FlutterWidgetsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RateAppCubit(),

      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Flutter Lab',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FeatureCard(
              title: 'Widgets',
              onTap: () => context.push('/widgets'),
            ),

            const SizedBox(height: 12),

            FeatureCard(
              title: 'HW-18. State managment (Lesson 18)',
              onTap: () => context.push('/state-management'),
            ),

            FeatureCard(
              title: 'HW-19. Rate screen (Lesson 19)',
              onTap: () async {
                final result = await context.push<bool>('/rate-app');

                if (result == true && context.mounted) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(const SuccessSnackBar());
                }
              },
            ),

            FeatureCard(
              title: 'HW-21. Explicit Animations (Lesson 21)',
              onTap: () => context.push('/explicit-animation'),
            ),

            const SizedBox(height: 12),

            FeatureCard(
              title: 'HW-22. Error Handling (Lesson 22)',
              onTap: () => context.push('/error-handling'),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  const FeatureCard({required this.title, required this.onTap, super.key});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
