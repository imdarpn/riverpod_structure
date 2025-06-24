import 'package:riverpod_structure/constants/app_size_constants.dart';
import 'package:riverpod_structure/l10n/localization.dart';
import 'package:riverpod_structure/router/navigation_methods.dart';
import 'package:riverpod_structure/src/presentation/screen/verify_otp/VerifyOtpArgs.dart';
import 'package:riverpod_structure/src/presentation/screen/verify_otp/state/verify_otp_state.dart';
import 'package:riverpod_structure/utils/app_extension.dart';
import 'package:riverpod_structure/utils/common_consumer.dart';
import 'package:riverpod_structure/utils/common_methods.dart';
import 'package:riverpod_structure/widget/app_annotated_region.dart';
import 'package:riverpod_structure/widget/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pinput/pinput.dart';

import '../../../../constants/app_fonts.dart';
import '../../../../enums/text_color_type.dart';
import '../../../../theme/app_colors.dart';
import '../../../../theme/text_styles.dart';
import '../../../../utils/app_countdown_timer.dart';
import '../../../../widget/app_button.dart';
import '../../../../widget/custom_app_bar.dart';
import '../register_account/notifier/register_account_notifier.dart';
import 'notifier/verify_otp_selection.dart';

class VerifyOtp extends StatelessWidget {
  final VerifyOtpArgs args;
  const VerifyOtp({super.key,required this.args});

  @override
  Widget build(BuildContext context) {
    
    return AutoConsumerBuilder<VerifyOtpState,VerifyOtpNotifier>(
      provider: verifyOtpNotifierProvider,
      builder: (BuildContext context, VerifyOtpState state, VerifyOtpNotifier notifier, WidgetRef ref) {
        return AppScaffold(
          appBar: CustomAppBar(
            titleText: context.translate.back,
            backgroundColor: TextColorType.bgColor.resolve(context),
          ),
          body: Container(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      context.translate.verifyNumber,
                      style: TextStyles.subtitle1SemiBold.copyWith(color: TextColorType.neutral9.resolve(context)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: RichText(
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.center,
                        softWrap: true,
                        maxLines: 3,
                        text: TextSpan(
                          text: context.translate.verifyNumberDesc1,
                          style: TextStyles.body1Medium.copyWith(
                              color: TextColorType.neutral6.resolve(context), fontSize: 14),
                          children: <TextSpan>[
                            TextSpan(
                                text: " +966 ** *** ${args.mobileNo!.substring(5,args.mobileNo!.length)} ",
                                style: TextStyles.body1Medium
                                    .copyWith(fontSize: 14,color: TextColorType.neutral9.resolve(context))),
                            TextSpan(
                                text: context.translate.verifyNumberDes2,
                                style: TextStyles.body1Medium.copyWith(
                                    color: TextColorType.neutral6.resolve(context), fontSize: 14)),
                          ],
                        ),
                      ),
                    ),
                    /// otp field
                    Form(
                      key: state.formKey,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, right: 30.0, top: 16),
                        child: Pinput(
                          autofocus: true,
                          controller: state.otpController,
                          length: 4,
                          errorPinTheme: _getPinTheme(
                            filledColor: TextColorType.defaultColor.resolve(context,invertColor: true),
                            borderColor: AppColors.red,
                            textColor: TextColorType.defaultColor.resolve(context),

                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          validator: (value) {
                            if(value!.trim().isEmpty){
                              return "Please enter OTP.";
                            }
                          },
                          onCompleted: (value) {},
                          onTapOutside: (event) {
                            context.hideKeyboard();
                          },
                          separatorBuilder: (index) {
                            return const SizedBox(width: 20);
                          },
                          defaultPinTheme: _getPinTheme(
                            filledColor: TextColorType.defaultColor.resolve(context,invertColor: true),
                            borderColor: AppColors.stroke,
                            textColor: TextColorType.defaultColor.resolve(context),
                          ),
                          focusedPinTheme: _getPinTheme(
                            filledColor: TextColorType.defaultColor.resolve(context,invertColor: true),
                            borderColor: AppColors.primary,
                            textColor: TextColorType.defaultColor.resolve(context),
                          ),
                          submittedPinTheme: _getPinTheme(
                            filledColor: TextColorType.defaultColor.resolve(context,invertColor: true),
                            borderColor: AppColors.primary,
                            textColor: TextColorType.defaultColor.resolve(context),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          context.translate.didOTP,
                          style: TextStyles.body1Medium.copyWith(
                              color: TextColorType.neutral6.resolve(context), fontSize: 14),
                        ),
                        SizedBox(width: 5,),
                        state.countDownSeconds == 0
                            ? GestureDetector(
                          onTap: () {
                            notifier.setCountDownSeconds(seconds: 60);
                            notifier.resendOTP(context,args.mobileNo,args.path);
                          },
                          child: Text(
                            context.translate.resendCode,
                            style: TextStyles.body1Medium.copyWith(
                                color: TextColorType.neutral9.resolve(context),
                                fontSize: 14),
                          ),
                        )
                            : AppCountDownTimer(
                          secondsRemaining: state.countDownSeconds!,
                          textColor: TextColorType.neutral9.resolve(context),
                          whenTimeExpires: () {
                            notifier.setCountDownSeconds(seconds: 0);
                          },
                          countDownFormatter: (seconds) =>
                              _countDownFormatter(seconds),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              AppButton(
                onPressed: () {
                  CommonMethods().hideKeyboard(context);
                  notifier.onButtonTap(context,args.mobileNo,args.path);
                },
                buttonText: context.translate.verify,
                buttonRadius: AppSizeConstants.kBorderRadius,
                textStyle: TextStyles.body1Medium,
                buttonColor: AppColors.primary,
              )
            ]),
          ),
        );
      },
    );
  }

  PinTheme _getPinTheme({
    required Color filledColor,
    required Color borderColor,
    required Color textColor,
  }) {
    return PinTheme(
      height: 50,
      width: 70,
      // padding: EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
        color: filledColor,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(10),
      ),
      textStyle: TextStyle(
        color: textColor,
        fontSize: 16,
        fontWeight: AppFontWeight.medium,
      ),

    );
  }

  String _countDownFormatter(int seconds) {
    int minutes = seconds ~/ 60; // Integer division
    int remainingSeconds = seconds % 60;
    return "${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}";
  }
}
