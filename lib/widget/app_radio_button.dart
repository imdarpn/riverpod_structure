import 'package:riverpod_structure/enums/text_color_type.dart';
import 'package:riverpod_structure/theme/app_colors.dart';
import 'package:riverpod_structure/theme/text_styles.dart';
import 'package:flutter/material.dart';

class CustomRadioOption<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final String label;
  final ValueChanged<T?> onChanged;

  const CustomRadioOption({
    super.key,
    required this.value,
    required this.groupValue,
    required this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.translate(
          offset: Directionality.of(context) == TextDirection.rtl
              ? const Offset(6, 0)   // shift right in RTL
              : const Offset(-6, 0), // shift left in LTR
          child: Radio<T>(
            value: value,
            groupValue: groupValue,
            onChanged: (value) {
              onChanged.call(value);
            },
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
            activeColor: AppColors.primary,
            fillColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.primary; // selected inner circle
              } else {
                return AppColors.stroke; // this affects the border for some Material versions
              }
            }),
          ),
        ),
        Text(label,style: TextStyles.body1Regular.copyWith(
          color: TextColorType.neutral9.resolve(context),
        )),
      ],
    );
  }
}
