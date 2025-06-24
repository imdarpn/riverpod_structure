import 'package:riverpod_structure/gen/assets.gen.dart';
import 'package:riverpod_structure/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppCheckBox extends StatefulWidget {
  final bool isSelected;
  final Function(bool)? onCheck;
  const AppCheckBox({super.key, this.isSelected = false,required this.onCheck});

  @override
  State<AppCheckBox> createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
       highlightColor: Colors.transparent,
       splashColor: Colors.transparent,
      onTap: (){
         widget.onCheck?.call(!widget.isSelected);
      },
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: !widget.isSelected ?  Border.all(
            color: AppColors.stroke,
            width: 2
          ) : null,
          color: widget.isSelected ? AppColors.primary : AppColors.white
        ),
        child: widget.isSelected ? Transform.scale(
          scale: 0.6,
            child: Assets.images.svg.chechBoxCheck.svg(),
        ) : null,
      )
    );
  }
}
