
import 'package:flutter/material.dart';

const double minDesktopWidth = 600.0;
const double medDesktopWidth = 800.0;

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}
double screenHeight(BuildContext context) {
  return screenSize(context).height;
}
double screenWidth(BuildContext context) {
  return screenSize(context).width;
}