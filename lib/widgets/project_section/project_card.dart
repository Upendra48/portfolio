import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import 'dart:js' as js;
import 'package:my_portfolio/constants/colors.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({super.key, required this.project});

  final ProjectUtils project;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 300,
      width: 250,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 69, 85, 93),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // project image
          SizedBox(
            child: Image.asset(
              project.image,
              height: 140,
              width: 250,
              fit: BoxFit.cover,
            ),
          ),
          // project title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: AppColors.secondary_LightGrey,
              ),
            ),
          ),
          // subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.description,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.secondary_LightGrey,
              ),
            ),
          ),
          const Spacer(),
          // Footer
          Container(
            color: AppColors.primary_ChipBackground,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: InkWell(
              onTap: () {
                // do something
                js.context.callMethod('open', [project.url]);
              },
              child: const Row(
                children: [
                  Icon(Icons.link),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Link to the project',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.secondary_LightGrey,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
