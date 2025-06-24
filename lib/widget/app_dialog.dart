
import 'package:riverpod_structure/constants/app_size_constants.dart';
import 'package:riverpod_structure/enums/text_color_type.dart';
import 'package:riverpod_structure/router/navigation_methods.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter_svg/svg.dart';

import '../constants/app_constants.dart';
import '../theme/app_colors.dart';
import '../theme/text_styles.dart';
import 'app_button.dart';

class AppDialog {
  static Future<void> showAppAlertDialog({
    required BuildContext context,
    VoidCallback? onPositiveTap,
    VoidCallback? onNegativeTap,
    String? titleImgPath,
    String title = "",
    String description = "",
    String positiveText = "",
    String negativeText = "",
    bool barrierDismissible = true,
    bool backgroundBlur = true,
  }) {
    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (titleImgPath != null)
                    Image.asset(titleImgPath, height: 50),
                  const SizedBox(height: 10),
                  Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text(description, textAlign: TextAlign.center),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      if (negativeText.isNotEmpty)
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              onNegativeTap?.call();
                              Navigator.pop(context);
                            },
                            child: Text(negativeText),
                          ),
                        ),
                      if (positiveText.isNotEmpty)
                        Expanded(
                          child: AppButton(
                            onPressed: () {
                              onPositiveTap?.call();
                              Navigator.pop(context);
                            },
                            buttonRadius: 10,
                           buttonText: positiveText,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static Future<void> showAppDialog({
    required BuildContext context,
    VoidCallback? onPositiveTap,
    String buttonText = "",
    VoidCallback? onNegativeTap,
    String negativeButtonText = "",
    bool? showPositiveNegative = false,
    Widget content = const SizedBox(),
    String? iconPath ,
    String title = "",
    String description = "",
    bool barrierDismissible = true,
    bool showBack = true,
    bool showButtons = true,
    VoidCallback? onCrossIconTap,
  }) {
    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) {
        return  PopScope(
          canPop: barrierDismissible,
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5,
            ),
            child: Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              insetPadding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Close Button (Top Right)
                  showBack ? Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: (){
                        context.pop();
                        onCrossIconTap?.call();
                      },
                    ),
                  ) : const SizedBox(),

                 Padding(
                   padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
                   child: Column(
                     children: [
                       iconPath!=null ? Padding(
                         padding: const EdgeInsets.only(bottom: 16),
                         child: Image.asset(
                             iconPath
                         ),
                       ) : const SizedBox.shrink(),

                       Visibility(
                         visible: title.isNotEmpty,
                         child: Text(
                           title,
                           style: TextStyles.subtitle1SemiBold.copyWith(color: TextColorType.defaultColor.resolve(context)),
                         ),
                       ),

                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 10),
                         child: content,
                       ),
                       // Button
                       if(showPositiveNegative!)...[
                         Row(
                           spacing: negativeButtonText.isNotEmpty && buttonText.isNotEmpty ? 14 : 0,
                           children: [
                             Visibility(
                               visible: negativeButtonText.isNotEmpty,
                               child: Expanded(
                                 child: AppButton(
                                   onPressed: ()=> onNegativeTap?.call(),
                                   buttonText : negativeButtonText,
                                   buttonRadius: AppSizeConstants.kBorderRadius,
                                   textStyle: TextStyles.body1Medium,
                                   borderColor: AppColors.stroke,
                                   buttonColor: AppColors.white,

                                 ),
                               ),
                             ),

                             Expanded(
                               child: AppButton(
                                   onPressed: ()=> onPositiveTap?.call(),
                                   buttonText : buttonText,
                                   buttonRadius: AppSizeConstants.kBorderRadius,
                                   textStyle: TextStyles.body1Medium

                               ),
                             ),
                           ],
                         ),
                       ]else if (showButtons)...[
                         AppButton(
                           onPressed: ()=> onPositiveTap?.call(),
                           buttonText: buttonText,
                           buttonRadius: AppSizeConstants.kBorderRadius,
                         )
                       ]


                     ],
                   ),
                 )

                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static void showAdaptiveAppDialog({
    required BuildContext context,
    required String message,
    required String titleStr,
    String? positiveText,
    String? negativeText,
    VoidCallback? onPositiveTap,
    VoidCallback? onNegativeTap,
  }) {
    Widget content = Text(
      message,
      style: TextStyles.body1Regular.copyWith(color: AppColors.black),
    );
    Widget title = Text(titleStr, style: TextStyles.h6Medium);
    final actions = <Widget>[
      if (negativeText != null) ...[
        TextButton(
          onPressed: () {
            context.pop();
            onNegativeTap!.call();
          },
          child: Text(
            negativeText,
            style: TextStyles.subtitle2Medium,
          ),
        ),
      ],
      TextButton(
        onPressed: () {
          context.pop();
          onPositiveTap!.call();
        },
        child: Text(
          positiveText!,
          style: TextStyles.subtitle2Medium,
        ),
      ),
    ];
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) {
            return;
          },
          child: AlertDialog.adaptive(
            title: title,
            content: content,
            actions: actions,
          ),
        );
      },
    );
  }
}
