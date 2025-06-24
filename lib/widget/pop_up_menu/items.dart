import 'package:riverpod_structure/constants/app_constants.dart';
import 'package:riverpod_structure/gen/assets.gen.dart';
import 'package:riverpod_structure/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../enums/menu_item.dart';
import '../../enums/text_color_type.dart';

class PopUpMenuItems {
  Widget? icon;
  MenuItems items;
  bool? prefixIcon;
  PopUpMenuItems({required this.items, this.icon, this.prefixIcon = false});

  static List<PopUpMenuItems> getProductMenus() => [
    PopUpMenuItems(items: MenuItems.share, icon: Assets.images.svg.share.svg(colorFilter: ColorFilter.mode(TextColorType.defaultColor.resolve(AppConstants.globalKey.currentState!.context), BlendMode.srcIn))),
    PopUpMenuItems(
      items: MenuItems.reportProduct,
      icon: Assets.images.svg.report.svg(colorFilter: ColorFilter.mode(TextColorType.defaultColor.resolve(AppConstants.globalKey.currentState!.context), BlendMode.srcIn)),
    ),
  ];

  static List<PopUpMenuItems> getProfileMenusProduct() => [
    PopUpMenuItems(items: MenuItems.edit, icon: Assets.images.svg.edit.svg(colorFilter: ColorFilter.mode(TextColorType.defaultColor.resolve(AppConstants.globalKey.currentState!.context), BlendMode.srcIn))),
    PopUpMenuItems(
      items: MenuItems.delete,
      icon: Assets.images.svg.delete.svg(colorFilter: ColorFilter.mode(TextColorType.defaultColor.resolve(AppConstants.globalKey.currentState!.context), BlendMode.srcIn)),
    ),
    PopUpMenuItems(
      items: MenuItems.moveToRedWeek,
      icon: Assets.images.svg.moveToRedWeek.svg(colorFilter: ColorFilter.mode(TextColorType.defaultColor.resolve(AppConstants.globalKey.currentState!.context), BlendMode.srcIn)),
    ),
    PopUpMenuItems(
      items: MenuItems.hide,
      prefixIcon:true
    ),
    PopUpMenuItems(
      items: MenuItems.chat,
      prefixIcon:true
    ),
    PopUpMenuItems(
      items: MenuItems.makeOffer,
      prefixIcon: true
    ),
  ];
}
