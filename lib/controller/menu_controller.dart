import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/constants/style.dart';
import 'package:my_portfolio/routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = ProfilePageRoutes.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case ProfilePageRoutes:
        return _customIcon(Icons.person_outline, itemName);
      case ProfilePageRoutes:
        return _customIcon(Icons.person_outline, itemName);
      case ProfilePageRoutes:
        return _customIcon(Icons.person_outline, itemName);
      default:
        return _customIcon(Icons.person_outline, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName))
      return Icon(
        icon,
        color: dark,
        size: 22,
      );
    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGray,
    );
  }
}
