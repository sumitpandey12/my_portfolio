import 'package:flutter/widgets.dart';

const int largetScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 460;

class ResponsiveWidgets extends StatelessWidget {
  final Widget largeScreen;
  final Widget smallScreen;
  const ResponsiveWidgets(
      {Key? key, required this.largeScreen, required this.smallScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < smallScreenSize;

  static bool islargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > mediumScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double _width = constraints.maxWidth;
      if (_width > smallScreenSize) {
        return largeScreen;
      } else if (_width <= smallScreenSize) {
        return smallScreen;
      } else {
        return smallScreen;
      }
    });
  }
}
