import '../bloc/rate_app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/rating_phone_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 24,
                ),

                content: Container(
                  height: 114,

                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 27,
                  ),

                  decoration: BoxDecoration(
                    color: const Color(0xFF656565),

                    borderRadius: BorderRadius.circular(20),

                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),

                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 14,
                    ),

                    decoration: BoxDecoration(
                      color: const Color(0xFF41A6F4),

                      borderRadius: BorderRadius.circular(16),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        SvgPicture.asset(
                          'assets/icons/vector_star.svg',
                          width: 18,
                          height: 18,
                        ),

                        const SizedBox(width: 8),

                        const Flexible(
                          child: Text(
                            'Rating submitted successfully',

                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,

                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),

                        const SizedBox(width: 8),

                        SvgPicture.asset(
                          'assets/icons/vector_star.svg',
                          width: 18,
                          height: 18,
                        ),
                      ],
                    ),
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
      backgroundColor: const Color(0xFFA5E0FF),

      appBar: AppBar(
        backgroundColor: const Color(0xFF163B7A),
        elevation: 0,
        centerTitle: true,

        leading: IconButton(
          onPressed: () {
            context.go('/');
          },

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
        child: BlocBuilder<RateAppCubit, RateAppState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.only(top: 8),

              child: Align(
                alignment: Alignment.topCenter,

                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,

                  children: [
                    Container(
                      width: double.infinity,

                      margin: const EdgeInsets.only(top: 125),

                      padding: const EdgeInsets.fromLTRB(16, 80, 16, 44),

                      decoration: BoxDecoration(
                        color: const Color(0xB260BAFF),

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
                          ? Column(
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

                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: List.generate(5, (index) {
                                      final starIndex = index + 1;

                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                        ),

                                        child: Icon(
                                          state.rating >= starIndex
                                              ? Icons.star
                                              : Icons.star_border,

                                          color: const Color(0xFFFEE2B6),

                                          size: 34,
                                        ),
                                      );
                                    }),
                                  ),
                                ),

                                const SizedBox(height: 24),

                                SizedBox(
                                  width: double.infinity,
                                  height: 46,

                                  child: ElevatedButton(
                                    onPressed: () {
                                      context
                                          .read<RateAppCubit>()
                                          .resetRating();
                                    },

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
                            )
                          : Column(
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
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: List.generate(5, (index) {
                                      final starIndex = index + 1;

                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                        ),

                                        child: IconButton(
                                          padding: EdgeInsets.zero,

                                          constraints: const BoxConstraints(),

                                          onPressed:
                                              state.status == RateStatus.loading
                                              ? null
                                              : () {
                                                  context
                                                      .read<RateAppCubit>()
                                                      .setRating(starIndex);
                                                },

                                          icon: Icon(
                                            state.rating >= starIndex
                                                ? Icons.star
                                                : Icons.star_border,

                                            color: const Color(0xFFFEE2B6),

                                            size: 34,
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                ),

                                const SizedBox(height: 24),

                                Container(
                                  width: 358,
                                  height: 94,

                                  padding: const EdgeInsets.all(12),

                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF4FAFF),

                                    borderRadius: BorderRadius.circular(10),
                                  ),

                                  child: Align(
                                    alignment: Alignment.topLeft,

                                    child: TextField(
                                      maxLines: null,

                                      onChanged: (value) {
                                        context
                                            .read<RateAppCubit>()
                                            .updateComment(value);
                                      },

                                      style: const TextStyle(
                                        color: Color(0xFF1B3D70),
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),

                                      decoration: const InputDecoration(
                                        isCollapsed: true,

                                        hintText: 'Add a comment',

                                        hintStyle: TextStyle(
                                          color: Color(0xFF1B3D70),
                                          fontFamily: 'Montserrat',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),

                                        border: InputBorder.none,

                                        contentPadding: EdgeInsets.zero,
                                      ),
                                    ),
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
                                              state.rating == 0 ||
                                                  state.status ==
                                                      RateStatus.loading
                                              ? null
                                              : () {
                                                  context
                                                      .read<RateAppCubit>()
                                                      .submitRating();
                                                },

                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color(
                                              0xFF1B3D70,
                                            ),

                                            elevation: 4,

                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),

                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 30,
                                              vertical: 13,
                                            ),
                                          ),

                                          child:
                                              state.status == RateStatus.loading
                                              ? const SizedBox(
                                                  width: 22,
                                                  height: 22,

                                                  child:
                                                      CircularProgressIndicator(
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
                                          onPressed:
                                              state.status == RateStatus.loading
                                              ? null
                                              : () {
                                                  context
                                                      .read<RateAppCubit>()
                                                      .resetRating();
                                                },

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
                                            backgroundColor: const Color(
                                              0xFF41A6F4,
                                            ),

                                            elevation: 4,

                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
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
                            ),
                    ),

                    Positioned(
                      top: 20,

                      child: RatingPhoneWidget(rating: state.rating),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
