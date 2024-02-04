import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/utils/project_utils.dart';

import 'package:my_portfolio/widgets/project_section/project_card.dart';

class ProjectDesktop extends StatelessWidget {
  const ProjectDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: AppColors.primary_DarkCyan,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
        child: Column(
          children: [
            //? Professional Projects
            // professional projects title
            Text(
              'Professional projects',
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

            // professional projects cards
            const SizedBox(
              height: 40,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Wrap(
                spacing: 25,
                runSpacing: 25,
                children: [
                  for (int i = 0; i < professionalProjectUtils.length; i++)
                    ProjectCardWidget(
                      project: professionalProjectUtils[i],
                    ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            //? Hobby Projects

            // Hobby projects title
            Text(
              'Hobby projects',
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

            // Hobby projects cards
            const SizedBox(
              height: 40,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Wrap(
                spacing: 25,
                runSpacing: 25,
                children: [
                  for (int i = 0; i < hobbyProjectUtils.length; i++)
                    ProjectCardWidget(
                      project: hobbyProjectUtils[i],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
