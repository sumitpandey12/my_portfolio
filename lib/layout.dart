import 'package:flutter/material.dart';
import 'package:my_portfolio/helper/responssiveness.dart';
import 'package:my_portfolio/pages/largeScreen.dart';
import 'package:my_portfolio/pages/smallScreen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ResponsiveWidgets(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
