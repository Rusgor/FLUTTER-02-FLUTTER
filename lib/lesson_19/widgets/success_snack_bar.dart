import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccessSnackBar extends SnackBar {
  const SuccessSnackBar({super.key})
    : super(
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        elevation: 0,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        content: const _SnackBarContent(),
      );
}

class _SnackBarContent extends StatelessWidget {
  const _SnackBarContent();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
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
                fontSize: 14,
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
    );
  }
}
