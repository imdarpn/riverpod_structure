import 'package:riverpod_structure/l10n/localization.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../enums/text_color_type.dart';
import '../../theme/text_styles.dart';
import '../../utils/app_validator.dart';
import '../app_text_field.dart';
import '../app_text_field_label.dart';

class CommonDropDown<T> extends StatefulWidget {
  final Function(T)? selectedValue;
  final List<T>? dropDownValueList;
  final T? dropDownValue;
  final String placeHolder;
  final TextFieldType textFieldType;
  final String Function(T item) getTitle;
  final bool readOnly;

  const CommonDropDown({
    super.key,
    required this.placeHolder,
    this.selectedValue,
    this.dropDownValueList,
    this.dropDownValue,
    this.textFieldType = TextFieldType.required,
    required this.getTitle,
    this.readOnly  = false,
  });

  @override
  State<CommonDropDown<T>> createState() => _CommonDropDownState<T>();
}

class _CommonDropDownState<T> extends State<CommonDropDown<T>> {
  late T? selected;

  @override
  void initState() {
    super.initState();
    selected = widget.dropDownValue;

    print("is select ${selected}");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.placeHolder.isNotEmpty)
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 6),
            child: AppTextFieldHeader(
              headerTxt: widget.placeHolder,
              textFieldType: widget.textFieldType,
              headerTxtStyle: TextStyles.body2Medium,
            ),
          ),
        IgnorePointer(
          ignoring: widget.readOnly,
          child: DropdownButtonFormField2<T?>(
            isExpanded: true,
            value: selected,
            validator: (value){
              if (value == null) {
                return context.translate.pleaseSelect(widget.placeHolder.toLowerCase());
              }
              return null;

            },
            decoration: InputDecoration(
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: TextColorType.borderStroke.resolve(context),
                ),
              ),
              filled: true,
              fillColor: TextColorType.defaultColor.resolve(context, invertColor: true),
            ),
            hint: Text(
              selected == null
                  ? "${context.translate.select} ${widget.placeHolder}"
                  : widget.getTitle(selected as T),
              style: TextStyles.body1Regular.copyWith(
                color: TextColorType.defaultColor.resolve(context),
              ),
            ),
            iconStyleData: const IconStyleData(icon: Icon(Icons.keyboard_arrow_down_outlined)),
            items: widget.dropDownValueList?.map((T item) {
              return DropdownMenuItem<T>(
                value: item,
                child: Text(
                  widget.getTitle.call(item),
                  style: TextStyles.body1Regular.copyWith(
                    color: TextColorType.defaultColor.resolve(context),
                  ),
                ),
              );
            }).toList(),
            onChanged: (value) {
              if (value != null) {
                widget.selectedValue?.call(value);
                setState(() {
                  selected = value;
                });
              }
            },
            buttonStyleData: const ButtonStyleData(
              elevation: 2,
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
              ),
              offset: const Offset(0, 0),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: MaterialStateProperty.all(6),
                thumbVisibility: MaterialStateProperty.all(true),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 14),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void didUpdateWidget(covariant CommonDropDown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Update selected value if it changed from parent
    if (widget.dropDownValue != oldWidget.dropDownValue) {
      setState(() {
        selected = widget.dropDownValue;
      });
    }
  }

}
