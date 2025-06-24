import 'package:riverpod_structure/enums/language_code.dart';
import 'package:riverpod_structure/enums/menu_item.dart';
import 'package:riverpod_structure/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../gen/assets.gen.dart';
import '../../constants/app_constants.dart';
import '../../enums/text_color_type.dart';
import '../../theme/app_colors.dart';
import 'items.dart';

class PopUpMenu extends StatefulWidget {
  final List<PopUpMenuItems> item;
  Widget? popupWidget;
  final List<bool> switchStates;
  final void Function(int index, bool value)? onToggle;

  final Function(MenuItems item)? onItemSelected;

  PopUpMenu({
    super.key,
    required this.item,
    required this.onItemSelected,
    this.popupWidget,
    this.onToggle,
    this.switchStates = const [],
  });

  @override
  State<PopUpMenu> createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {

  late List<bool> _localSwitchStates;


  @override
  void initState() {
    super.initState();
    _localSwitchStates = List.from(widget.switchStates);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return PopupMenuButton<PopUpMenuItems>(
          onSelected: (item) => widget.onItemSelected!.call(item.items),
          offset: const Offset(0, 45),
          icon: widget.popupWidget ?? IconButton(
            onPressed: null,
            icon: Assets.images.svg.menuDot.svg(colorFilter: ColorFilter.mode(TextColorType.defaultColor.resolve(context), BlendMode.srcIn))
          ),
          padding: EdgeInsets.zero,
          menuPadding: const EdgeInsets.symmetric(vertical: 10),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          constraints: const BoxConstraints(
            minWidth: 150,
          ),
          itemBuilder: (context) => generateItem(),
        );
      }
    );
  }

  List<PopupMenuEntry<PopUpMenuItems>> generateItem() {
    List<PopupMenuEntry<PopUpMenuItems>> items = [];

    for (int i = 0; i < widget.item.length; i++) {
      items.add(
        buildPopupMenuItem(
          menu: widget.item[i],
          bottomPadding: i == widget.item.length - 1 ? 14 : 0,
          topPadding: i == 0 ? 5 : 0,
          index: i,
        ),
      );

      if (i != widget.item.length - 1) {
        items.add(
          const PopupMenuDivider(),
        );
      }
    }

    return items;
  }

  PopupMenuItem<PopUpMenuItems> buildPopupMenuItem({
    required PopUpMenuItems menu,
    required int index,
    required double bottomPadding,
    required double topPadding,
  }) {
    return PopupMenuItem<PopUpMenuItems>(
      value: menu,
      height: 30,
      padding:  EdgeInsets.only(
        left: AppConstants.currentLocale == LanguageCode.en ?  10 : 0,
        right: AppConstants.currentLocale == LanguageCode.en ?  0 : 10,
      ),
      child: Row(
        spacing: 10,
        children: [
          menu.icon != null ? menu.icon! : const SizedBox.shrink(),
          Text(
            menu.items.value,
            style: TextStyles.body2Medium.copyWith(color: TextColorType.defaultColor.resolve(context)),
          ),
          const Spacer(),
          menu.prefixIcon  == true ? StatefulBuilder(
            builder: (context, setState) {
              final switchIndex = index - 3;
              return SizedBox(
                height: 30,
                child: Switch(
                  value: _localSwitchStates[switchIndex],
                  onChanged: (value) {
                    setState(() {
                      _localSwitchStates[switchIndex] = value;
                    });
                    widget.onToggle?.call(switchIndex, value); // Update parent
                  },
                  activeColor: AppColors.primary,
                  thumbColor: WidgetStateProperty.resolveWith<Color>((states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.white;
                    }
                    return AppColors.primary;
                  }),
                ),
              );
            },
          ): const SizedBox.shrink(),
        ],
      ),
    );
  }
}


