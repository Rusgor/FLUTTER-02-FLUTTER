import '../bloc/rate_app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RateAppScreen extends StatelessWidget {
  const RateAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RateAppCubit(),

      child: BlocListener<RateAppCubit, RateAppState>(
        listener: (context, state) {
          if (state.status == RateStatus.success) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: const Duration(seconds: 3),
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.transparent,
                elevation: 0,

                content: Container(
                  width: 390,
                  height: 60,

                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 14,
                  ),

                  decoration: BoxDecoration(
                    color: const Color(0xFF41A6F4),
                    borderRadius: BorderRadius.circular(10),

                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(130, 127, 127, 0.25),
                        offset: Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),

                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text('😊', style: TextStyle(fontSize: 20)),

                      SizedBox(width: 12),

                      Icon(Icons.star, color: Colors.white, size: 20),

                      SizedBox(width: 10),

                      Text(
                        'Rating submitted successfully',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(width: 10),

                      Icon(Icons.star, color: Colors.white, size: 20),

                      SizedBox(width: 12),

                      Text('😊', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ),
            );
          }
        },

        child: const _RateAppView(),
      ),
    );
  }
}

class _RateAppView extends StatelessWidget {
  const _RateAppView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA8D5F0),

      appBar: AppBar(
        backgroundColor: const Color(0xFF163B7A),
        elevation: 0,
        centerTitle: true,

        leading: IconButton(
          onPressed: () {
            context.pop();
          },

          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),

        title: const Text(
          'Flutter lab',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: BlocBuilder<RateAppCubit, RateAppState>(
            builder: (context, state) {
              return Container(
                width: double.infinity,

                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 34,
                ),

                decoration: BoxDecoration(
                  color: const Color(0xFF6EB6F2),
                  borderRadius: BorderRadius.circular(24),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.18),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),

                child: Column(
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    const Text(
                      'How would you rate the app?',
                      textAlign: TextAlign.center,

                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF163B7A),
                      ),
                    ),

                    const SizedBox(height: 32),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: List.generate(5, (index) {
                        final starIndex = index + 1;

                        return IconButton(
                          onPressed: state.status == RateStatus.loading
                              ? null
                              : () {
                                  context.read<RateAppCubit>().setRating(
                                    starIndex,
                                  );
                                },

                          icon: Icon(
                            state.rating >= starIndex
                                ? Icons.star
                                : Icons.star_border,

                            color: const Color(0xFFFFF2B3),
                            size: 44,
                          ),
                        );
                      }),
                    ),

                    const SizedBox(height: 36),

                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 62,

                            child: ElevatedButton(
                              onPressed:
                                  state.rating == 0 ||
                                      state.status == RateStatus.loading
                                  ? null
                                  : () {
                                      context
                                          .read<RateAppCubit>()
                                          .submitRating();
                                    },

                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF163B7A),
                                elevation: 6,
                                shadowColor: Colors.black54,

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),

                              child: state.status == RateStatus.loading
                                  ? const SizedBox(
                                      height: 28,
                                      width: 28,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 3,
                                        color: Colors.white,
                                      ),
                                    )
                                  : const Text(
                                      'Submit rating',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 16),

                        Expanded(
                          child: SizedBox(
                            height: 62,

                            child: ElevatedButton.icon(
                              onPressed: state.status == RateStatus.loading
                                  ? null
                                  : () {
                                      context
                                          .read<RateAppCubit>()
                                          .resetRating();
                                    },

                              icon: const Icon(
                                Icons.refresh,
                                color: Colors.white,
                                size: 24,
                              ),

                              label: const Text(
                                'Reset rating',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),

                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF6EB6F2),
                                elevation: 6,
                                shadowColor: Colors.black45,

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
