import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int customScreenSize = 1100;

class ResponsiveWidget extends StatelessWidget {
  final Widget? smallScreen;
  final Widget? mediumScreen;
  final Widget largeScreen;

  const ResponsiveWidget(
      {this.smallScreen, this.mediumScreen, required this.largeScreen});

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double width = constraints.maxWidth;
      if (constraints.maxWidth >= largeScreenSize) {
        return largeScreen;
      } else if (mediumScreenSize <= width && width < largeScreenSize) {
        return mediumScreen ?? largeScreen;
      } else {
        return smallScreen ?? largeScreen;
      }
    });
  }
}
