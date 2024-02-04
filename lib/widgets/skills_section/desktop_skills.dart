import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/skills_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // platforms
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 450,
          ),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: [
              for (int i = 0; i < platformItems.length; i++)
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: AppColors.primary_ChipBackground,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 18.0,
                      vertical: 8.0,
                    ),
                    leading: Image.asset(
                      platformItems[i]["img"],
                      width: 28,
                    ),
                    title: Text(
                      platformItems[i]["title"],
                      style: const TextStyle(
                        color: AppColors.secondary_LightGrey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(width: 20),

        // skills
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 500,
            ),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 10,
              runSpacing: 10,
              children: [
                for (int i = 0; i < skillsItems.length; i++)
                  Chip(
                    backgroundColor: AppColors.primary_ChipBackground,
                    padding: const EdgeInsets.symmetric(
                      // match the background color with the card
                      vertical: 12.0,
                      horizontal: 16.0,
                    ),
                    label: Text(
                      skillsItems[i]["title"],
                      style: const TextStyle(
                        color: AppColors.secondary_LightGrey,
                        fontSize: 20,
                      ),
                    ),
                    avatar: Image.asset(
                      skillsItems[i]["img"],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
