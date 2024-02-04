import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/widgets/skills_section/desktop_skills.dart';
import 'package:my_portfolio/widgets/skills_section/mobile_skills.dart';
import '../../constants/colors.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 50.0,
      ),
      width: screenWidth(context),
      color: AppColors.primary_DarkCyan,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // title
          Text(
            "What i can do",
            style: GoogleFonts.openSans(
              textStyle: const TextStyle(
                color: AppColors.secondary_PastelBlue,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.0,
              ),
            ),
          ),
          const SizedBox(height: 40),
          // Platform and skills
          if (screenWidth(context) >= minDesktopWidth)
            //? Desktop View
            const SkillsDesktop()
          else
            //? Mobile View
            const SkillsMobile()
        ],
      ),
    );
  }
}
