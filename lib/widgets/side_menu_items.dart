import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/style.dart';
import 'package:my_portfolio/helper/responssiveness.dart';
import 'package:velocity_x/velocity_x.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidgets.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: _width / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Icon(Icons.logo_dev),
                    ),
                    Flexible(
                      child: "Profile".text.size(20).bold.color(active).make(),
                    ),
                    SizedBox(width: _width / 48),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          Divider(
            color: lightGray.withOpacity(.1),
          ),
          // )
        ],
      ),
    );
  }
}
