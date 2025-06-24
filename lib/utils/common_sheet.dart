import 'package:riverpod_structure/constants/app_size_constants.dart';
import 'package:riverpod_structure/enums/text_color_type.dart';
import 'package:riverpod_structure/l10n/localization.dart';
import 'package:riverpod_structure/router/navigation_methods.dart';
import 'package:riverpod_structure/theme/text_styles.dart';
import 'package:riverpod_structure/utils/snackbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';


import '../constants/app_constants.dart';
import '../constants/app_fonts.dart';
import '../gen/assets.gen.dart';
import '../theme/app_colors.dart';
import '../widget/app_button.dart';
import 'common_methods.dart';
import 'logger_util.dart';

class CommonSheet {

  static Future<void> showAppBottomSheet({
    required Widget content,
    Widget? titleWidget,
    String title = "",
    bool isDismissible = true,
    bool enableDrag = true,
    EdgeInsets contentPadding = const EdgeInsets.symmetric(horizontal: 10),
    VoidCallback? onPositiveTap,
    VoidCallback? onNegativeTap,
    String positiveButtonText = "",
    String negativeButtonText = "",
  }) {
    return showModalBottomSheet(
      context: AppConstants.globalKey.currentContext!,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: TextColorType.defaultColor.resolve(AppConstants.globalKey.currentContext!,invertColor: true),
      isScrollControlled: true, // Allows dynamic height
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
            top: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom + 15,
          ),
          child: Wrap( // Wrap allows bottom sheet to take only required height
            children: [
              // Drag handle
              Center(
                child: Container(
                  width: 50,
                  height: 5,
                  decoration: BoxDecoration(
                    color: AppColors.stroke,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Title
              if (titleWidget != null) titleWidget else
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyles.subtitle2Bold.copyWith(color: TextColorType.defaultColor.resolve(context)),
                    ),

                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.close),
                    ),
                  ],
                ),

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(),
              ),

              // Content
              Padding(
                padding: contentPadding,
                child: content,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  spacing: 14,
                  children: [
                    negativeButtonText.isNotEmpty ?  Expanded(
                      child: AppButton(
                        onPressed: () => onNegativeTap?.call(),
                        buttonText: negativeButtonText,
                        buttonColor: AppColors.white,
                        borderColor: AppColors.neutral2,
                        buttonRadius: AppSizeConstants.kBorderRadius,
                      ),
                    ): const SizedBox(),

                    positiveButtonText.isNotEmpty ?  Expanded(
                      child: AppButton(
                        onPressed: () => onPositiveTap?.call(),
                        buttonText: positiveButtonText,
                        buttonColor: AppColors.primary,
                        buttonRadius: AppSizeConstants.kBorderRadius,
                      ),
                    ) : const SizedBox(),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  static showPurchaseSupportAppBottomSheet({BuildContext? context, VoidCallback? onPositiveTap,}){
    return showAppBottomSheet(titleWidget: Row(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      spacing: 10,
      children: [
        CircleAvatar(
          backgroundColor: AppColors.bg3,
          child: Assets.images.svg.shield.svg(
            height: 26,
            width: 32,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Text(
                context!.translate
                    .c2CPurchaseSupportFee,
                style: TextStyles.subtitle2Bold
                    .copyWith(
                  color: TextColorType
                      .defaultColor
                      .resolve(context),
                ),
              ),
              Text(
                context
                    .translate
                    .learnBuyerProtectionFee,
                maxLines: 2,
                style: TextStyles
                    .caption1Regular
                    .copyWith(
                  color: TextColorType
                      .defaultColor
                      .resolve(context),
                  decoration:
                  TextDecoration
                      .underline,
                  decorationColor:
                  AppColors.greyColor,
                ),
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: Offset.fromDirection(5, 18),
          child: IconButton(
            icon: const Icon(Icons.close),
            onPressed:
                () => Navigator.pop(context),
          ),
        ),
      ],
    ),
      positiveButtonText: context!.translate.gotIt,
      onPositiveTap: onPositiveTap,
      content: SizedBox(
        height:
        MediaQuery.sizeOf(context).height *
            0.70,
        child: SingleChildScrollView(
          primary: false,
          child: Column(
            spacing: 10,
            children: [
              _buildListTile(
                Assets
                    .images
                    .svg
                    .guaranteedRefund
                    .path,
                context
                    .translate
                    .guaranteedRefund,
                context
                    .translate
                    .guaranteedRefundDDesc,
                context,
              ),

              _buildListTile(
                Assets
                    .images
                    .svg
                    .securePayment
                    .path,
                context!.translate.securedPayments,
                context
                    .translate
                    .securedPaymentsDesc,
                context,
              ),

              _buildListTile(
                Assets
                    .images
                    .svg
                    .onTimeDelivery
                    .path,
                context!.translate.onTimeDelivery,
                context
                    .translate
                    .onTimeDeliveryDesc,
                context,
              ),

              _buildListTile(
                Assets
                    .images
                    .svg
                    .disputeResolution
                    .path,
                context
                    .translate
                    .disputeResolution,
                context
                    .translate
                    .disputeResolutionDesc,
                context,
              ),

              _buildListTile(
                Assets
                    .images
                    .svg
                    .authenticityGuarantee
                    .path,
                context
                    .translate
                    .authenticityGuarantee,
                context
                    .translate
                    .authenticityGuaranteeDesc,
                context,
              ),

              _buildListTile(
                Assets.images.svg.ourSupport.path,
                context!.translate.ourSupport,
                context!.translate.ourSupportDesc,
                context,
              ),
            ],
          ),
        ),
      ),);
  }

  static Widget _buildListTile(
      String icon,
      String title,
      String subTitle,
      BuildContext context,
      ) {
    return Row(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: AppColors.bg3,
          child: SvgPicture.asset(icon),
        ),
        Expanded(
          child: Column(
            spacing: 6,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyles.subtitle2Medium.copyWith(
                  color: TextColorType.defaultColor.resolve(context),
                ),
              ),
              Text(
                subTitle,
                style: TextStyles.body1Regular.copyWith(
                  color: TextColorType.neutral6.resolve(context),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}