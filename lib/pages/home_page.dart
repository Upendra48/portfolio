//import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
//import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/widgets/contact_section/contact_section.dart';
import 'package:my_portfolio/widgets/project_section/project_section.dart';
import 'package:my_portfolio/widgets/footer/footer.dart';
//import 'package:my_portfolio/constants/skills_items.dart';
//import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/widgets/home/mobile_view/drawer_mobile.dart';

//import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/home/mobile_view/header_mobile.dart';

import 'package:my_portfolio/widgets/home/mobile_view/main_mobile.dart';
import 'package:my_portfolio/widgets/skills_section/skills_view.dart';

import '../widgets/home/desktop_view/header_desktop.dart';
import '../widgets/home/desktop_view/main_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();

  // lets create a number of global keys for each widget ie each section of the page to which we want to scroll
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
//    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,

          // use color from colors.dart
          backgroundColor: AppColors.primary_DarkCyan,
          endDrawer: screenWidth >= minDesktopWidth
              ? null
              : DrawerMobile(
                  onNavItemTap: (int navIndex) {
                    // call function to scroll to the selected section
                    scrollToSection(navIndex);
                  },
                ),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                    key: navbarKeys
                        .first), // this is the key for the header or Home section
                //* main section

                if (screenWidth > minDesktopWidth)
                  HeaderDesktop(
                    onNavMenuTap: (int navIndex) {
                      // call function to scroll to the selected section
                      scrollToSection(navIndex);
                    },
                  )
                else
                  HeaderMobile(
                    onLogoTap: () {
                      scrollToSection(0);
                    },
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),

                if (screenWidth > minDesktopWidth)
                  MainDesktop(
                    onNavMenuTap: (int navIndex) {
                      // call function to scroll to the selected section
                      scrollToSection(navIndex);
                    },
                  )
                else
                  MainMobile(
                    onNavMenuTap: (int navIndex) {
                      // call function to scroll to the selected section
                      scrollToSection(navIndex);
                    },
                  ),

                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: screenWidth,
                  ),
                  child: const Divider(
                    color: AppColors.secondary_PastelGreen,
                    thickness: 1,
                  ),
                ),

                //skills section
                SkillsView(
                  key: navbarKeys[1],
                ),

                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: screenWidth,
                  ),
                  child: const Divider(
                    color: AppColors.secondary_PastelGreen,
                    thickness: 1,
                  ),
                ),

                //* projects section
                ProjectDesktop(
                  key: navbarKeys[2],
                ),

                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: screenWidth,
                  ),
                  child: const Divider(
                    color: AppColors.secondary_PastelGreen,
                    thickness: 1,
                  ),
                ),

                //* contact section
                ContactSection(
                  key: navbarKeys[3],
                ),

                //* blogs section
                // Container(
                //   height: 500,
                //   width: double.maxFinite,
                //   color: Colors.blueGrey,
                // ),

                //* footer section
                const Footer(),
              ],
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      // open a  blog page
      return;
    }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      alignment: 0.5,
    );
  }
}
