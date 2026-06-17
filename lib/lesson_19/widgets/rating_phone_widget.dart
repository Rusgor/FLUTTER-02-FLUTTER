import 'package:flutter/material.dart';

class RatingPhoneWidget extends StatelessWidget {
  final int rating;

  const RatingPhoneWidget({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 96,
      height: 124,

      child: Image.asset(_getPhoneAsset(), fit: BoxFit.contain),
    );
  }

  String _getPhoneAsset() {
    switch (rating) {
      case 1:
        return 'assets/images/phone_1_star.png';

      case 2:
        return 'assets/images/phone_2_stars.png';

      case 3:
        return 'assets/images/phone_3_stars.png';

      case 4:
        return 'assets/images/phone_4_stars.png';

      case 5:
        return 'assets/images/phone_5_stars.png';

      default:
        return 'assets/images/phone_idle.png';
    }
  }
}
