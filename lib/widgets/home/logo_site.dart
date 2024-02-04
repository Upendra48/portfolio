import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {


    return GestureDetector(
      onTap: onTap,
      child: Text(
        'upendra raj joshi',
        style: GoogleFonts.yujiBoku(
          textStyle: const TextStyle(
            color: AppColors.secondary_LightGrey,
            fontSize: 20,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            letterSpacing: 0.0,
          ),
        ),
      ),
    );
  }
}
