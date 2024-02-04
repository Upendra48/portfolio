import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
              maxWidth: 750,
      ),
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 24, 23, 45),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 20),
        alignment: Alignment.center,
        child: const Text(
          'Made with ❤️ using Flutter',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: AppColors.secondary_LightGrey,
          ),
        ),
      ),
    );
  }
}
