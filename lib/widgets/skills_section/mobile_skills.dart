import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/skills_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      child: Column(
        children: [
          // platforms
          for (int i = 0; i < platformItems.length; i++)
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: AppColors.primary_ChipBackground,
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                leading: Image.asset(
                  platformItems[i]["img"],
                  width: 28,
                ),
                title: Text(
                  platformItems[i]["title"],
                  style: const TextStyle(
                    color: AppColors.secondary_LightGrey,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          const SizedBox(height: 20),

          // skills
          Wrap(
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
                    horizontal: 20.0,
                  ),
                  label: Text(
                    skillsItems[i]["title"],
                    style: const TextStyle(
                      color: AppColors.secondary_LightGrey,
                      fontSize: 15,
                    ),
                  ),
                  avatar: Image.asset(
                    skillsItems[i]["img"],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
