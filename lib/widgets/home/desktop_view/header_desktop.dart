import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/widgets/home/logo_site.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({
    super.key,
    this.onLogoTap,
    required this.onNavMenuTap,
  });

  final VoidCallback? onLogoTap;
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      width: double.maxFinite,
      decoration: BoxDecoration(
        // gradient: const LinearGradient(
        //   colors: [
        //     Colors.transparent,
        //     Color.fromRGBO(0, 0, 0, 1),
        //   ],
        // ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SiteLogo(
            onTap: onLogoTap,
          ),
        ),
        const Spacer(),
        for (int i = 0; i < navItems.length; i++)
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: TextButton(
                onPressed: () {
                  onNavMenuTap(i);
                },
                child: Text(
                  navItems[i],
                  style: GoogleFonts.roboto(
                    textStyle:const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                    // use color from colors.dart
                    color: AppColors.secondary_LightGrey,
                  ),
                ),),
          ),),
      ],),
    );
  }
}
