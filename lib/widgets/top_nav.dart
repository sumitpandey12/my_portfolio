import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/style.dart';
import 'package:my_portfolio/helper/responssiveness.dart';
import 'package:velocity_x/velocity_x.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      backgroundColor: light,
      iconTheme: IconThemeData(color: dark),
      leading: !ResponsiveWidgets.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: const Icon(Icons.logo_dev, color: Colors.black54),
                ),
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState?.openDrawer();
              },
              icon: const Icon(Icons.menu)),
      title: Row(
        children: [
          Visibility(
            child: "Profile".text.color(dark).bold.make(),
          ),
          Expanded(child: Container()),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: dark.withOpacity(.7),
              )),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications),
                color: dark.withOpacity(.7),
              ),
              Positioned(
                  left: 21,
                  top: 6,
                  bottom: 22,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: active,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: light, width: 2)),
                  ))
            ],
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            color: lightGray,
            width: 1,
            height: 20,
          ),
          SizedBox(
            width: 24,
          ),
          "Sumit Pandey".text.color(dark).xl.bold.make(),
          SizedBox(
            width: 16,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Container(
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundColor: light,
                  child: Icon(
                    Icons.person_outline,
                    color: dark,
                  ),
                )),
          ).cornerRadius(30),
        ],
      ),
    );
