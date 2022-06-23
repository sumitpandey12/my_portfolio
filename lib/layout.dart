import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/largeScreen.dart';
import 'package:my_portfolio/pages/smallScreen.dart';
import 'package:my_portfolio/widgets/side_menu_items.dart';
import 'package:my_portfolio/widgets/top_nav.dart';
import 'helper/responssiveness.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> key = GlobalKey();
    return Scaffold(
      key: key,
      appBar: topNavigationBar(context, key),
      body: ResponsiveWidgets(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
      drawer: Drawer(
        child: SideMenu(),
      ),
    );
  }
}
