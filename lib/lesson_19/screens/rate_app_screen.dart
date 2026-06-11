import '../bloc/rate_app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RateAppScreen extends StatefulWidget {
  const RateAppScreen({super.key});

  @override
  State<RateAppScreen> createState() => _RateAppScreenState();
}

class _RateAppScreenState extends State<RateAppScreen> {
  bool _initialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_initialized) {
      context.read<RateAppCubit>().resetIfNotSubmitted();
      _initialized = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RateAppCubit, RateAppState>(
      listener: (context, state) async {
        if (state.status == RateStatus.success) {
          await Future.delayed(const Duration(milliseconds: 1000));

          if (!context.mounted) {
            return;
          }

          context.pop(true);
        }
      },
      child: const _RateAppView(),
    );
  }
}

class _RateAppView extends StatelessWidget {
  const _RateAppView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA5E0FF),

      appBar: AppBar(
        backgroundColor: const Color(0xFF163B7A),
        elevation: 0,
        centerTitle: true,

        leading: IconButton(
          onPressed: () => context.pop(),

          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),

        title: const Text(
          'Flutter lab',

          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 22,
            fontFamily: 'Montserrat',
          ),
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 48),

          child: BlocBuilder<RateAppCubit, RateAppState>(
            builder: (context, state) {
              return Column(
                children: [
                  Container(
                    width: double.infinity,

                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 32,
                    ),

                    decoration: BoxDecoration(
                      color: const Color(0xFF72C1FA),

                      borderRadius: BorderRadius.circular(20),

                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),

                    child: state.status == RateStatus.success
                        ? _SuccessContent(state: state)
                        : _RatingContent(state: state),
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

class _SuccessContent extends StatelessWidget {
  const _SuccessContent({required this.state});

  final RateAppState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,

      children: [
        const Text(
          'You rated the app',

          textAlign: TextAlign.center,

          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1B3D70),
            fontFamily: 'Montserrat',
          ),
        ),

        const SizedBox(height: 24),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: List.generate(5, (index) {
            final starIndex = index + 1;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),

              child: Icon(
                state.rating >= starIndex ? Icons.star : Icons.star_border,

                color: const Color(0xFFFEE2B6),
                size: 34,
              ),
            );
          }),
        ),

        const SizedBox(height: 24),

        SizedBox(
          width: double.infinity,
          height: 46,

          child: ElevatedButton(
            onPressed: () => context.read<RateAppCubit>().resetRating(),

            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1B3D70),

              elevation: 4,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),

              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 13),
            ),

            child: const Text(
              'Rate again',

              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _RatingContent extends StatelessWidget {
  const _RatingContent({required this.state});

  final RateAppState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,

      children: [
        const Text(
          'How would you rate the app?',

          textAlign: TextAlign.center,

          style: TextStyle(
            color: Color(0xFF1B3D70),
            fontFamily: 'Montserrat',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 24),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: List.generate(5, (index) {
              final starIndex = index + 1;

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),

                child: IconButton(
                  padding: EdgeInsets.zero,

                  constraints: const BoxConstraints(),

                  onPressed: state.status == RateStatus.loading
                      ? null
                      : () => context.read<RateAppCubit>().setRating(starIndex),

                  icon: Icon(
                    state.rating >= starIndex ? Icons.star : Icons.star_border,

                    color: const Color(0xFFFEE2B6),
                    size: 34,
                  ),
                ),
              );
            }),
          ),
        ),

        const SizedBox(height: 24),

        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 46,

                child: ElevatedButton(
                  onPressed:
                      state.rating == 0 || state.status == RateStatus.loading
                      ? null
                      : () => context.read<RateAppCubit>().submitRating(),

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1B3D70),

                    elevation: 4,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 13,
                    ),
                  ),

                  child: state.status == RateStatus.loading
                      ? const SizedBox(
                          width: 22,
                          height: 22,

                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2.5,
                          ),
                        )
                      : const Text(
                          'Submit rating',

                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                ),
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: SizedBox(
                height: 46,

                child: ElevatedButton.icon(
                  onPressed: state.status == RateStatus.loading
                      ? null
                      : () => context.read<RateAppCubit>().resetRating(),

                  icon: const Icon(
                    Icons.refresh,
                    color: Colors.white,
                    size: 18,
                  ),

                  label: const Text(
                    'Reset rating',

                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF41A6F4),

                    elevation: 4,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    padding: const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 13,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
