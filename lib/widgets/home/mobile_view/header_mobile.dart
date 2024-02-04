import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/home/logo_site.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});

  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      child: Row(children: [
        SiteLogo(
          onTap: onLogoTap,
        ),
        const Spacer(),
        IconButton(
          onPressed: onMenuTap,
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 16,
        )
      ]),
    );
  }
}
