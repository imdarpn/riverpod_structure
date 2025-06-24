import 'package:riverpod_structure/constants/api_constants.dart';
import 'package:riverpod_structure/constants/app_size_constants.dart';
import 'package:riverpod_structure/enums/cms_pages.dart';
import 'package:riverpod_structure/enums/text_color_type.dart';
import 'package:riverpod_structure/l10n/localization.dart';
import 'package:riverpod_structure/router/navigation_methods.dart';
import 'package:riverpod_structure/src/presentation/screen/register_account/state/register_account_state.dart';
import 'package:riverpod_structure/theme/app_colors.dart';
import 'package:riverpod_structure/utils/common_consumer.dart';
import 'package:riverpod_structure/widget/app_check_box.dart';
import 'package:riverpod_structure/widget/app_scaffold.dart';
import 'package:riverpod_structure/widget/app_text_field.dart';
import 'package:riverpod_structure/widget/custom_app_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../theme/text_styles.dart';
import '../../../../utils/app_validator.dart';
import '../../../../widget/app_button.dart';
import '../cms_html_page/cms_html_page_args.dart';
import 'notifier/register_account_notifier.dart';

class RegisterAccount extends StatelessWidget {
  const RegisterAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoConsumerBuilder<RegisterAccountState, RegisterAccountNotifier>(
      builder: (context, state, notifier, ref) {
        return AppScaffold(
          appBar: CustomAppBar(
            backgroundColor: TextColorType.bgColor.resolve(context),
            showBackIcon: false,
          ),
          body: Form(
            // key: state.formKey,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox(height: 40),
                        Assets.images.svg.logoYellow.svg(),
                        Text(
                          context.translate.regAcc,
                          style: TextStyles.subtitle1SemiBold.copyWith(
                            color: TextColorType.neutral9.resolve(context),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          context.translate.regAccDesc,
                          style: TextStyles.body1Regular.copyWith(
                            color: TextColorType.neutral6.resolve(context),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 30),

                        AppTextField(
                          headerText: context.translate.mobileNumber,
                          textFieldType: TextFieldType.required,
                          hintText: context.translate.enterMobileNumber,
                          textEditingController: state.mobileNumberController!,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.phone,
                          inputFormat: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          maxLength: 10,
                          counterText: "",
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(
                              top: 12,
                              start: 8,
                            ),
                            child: Text(
                              '+966',
                              style: TextStyles.body1Regular.copyWith(
                                color: TextColorType.defaultColor.resolve(
                                  context,
                                ),
                              ),
                            ),
                          ),
                          validator:
                              (value) =>
                                  AppValidator.mobileNumber(value: value ?? ""),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 10,
                          children: [
                            AppCheckBox(
                              isSelected: state.termsRead,
                              onCheck: (newValue) {
                                ref
                                    .read(
                                      registerAccountNotifierProvider.notifier,
                                    )
                                    .toggle(newValue);
                              },
                            ),
                            Expanded(
                              child: RichText(
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.start,
                                softWrap: true,
                                maxLines: 2,
                                text: TextSpan(
                                  text: context.translate.iveRead,
                                  style: TextStyles.body1Medium.copyWith(
                                    color: TextColorType.neutral6.resolve(
                                      context,
                                    ),
                                    fontSize: 14,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          context.translate.termsAndConditions,
                                      style: TextStyles.body1Medium.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: TextColorType.neutral9.resolve(
                                          context,
                                        ),
                                      ),
                                      recognizer:
                                      TapGestureRecognizer()
                                        ..onTap = () {
                                          context.pushNamed(Routes.cmsPages,arguments:  CmsHtmlPageArgs(
                                            cmsPageEndpoint:
                                            ApiConstants.terms,
                                            cmsPages: CmsPages.terms,
                                          ),);
                                        },
                                    ),
                                    TextSpan(
                                      text: context.translate.and,
                                      style: TextStyles.body1Medium.copyWith(
                                        color: TextColorType.neutral6.resolve(
                                          context,
                                        ),
                                        fontSize: 14,
                                      ),
                                    ),
                                    TextSpan(
                                      text: context.translate.privacyPolicy,
                                      style: TextStyles.body1Medium.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: TextColorType.neutral9.resolve(
                                          context,
                                        ),
                                      ),
                                      recognizer:
                                      TapGestureRecognizer()
                                        ..onTap = () {
                                          context.pushNamed(Routes.cmsPages,arguments:  CmsHtmlPageArgs(
                                            cmsPageEndpoint:
                                            ApiConstants.privacyPolicy,
                                            cmsPages: CmsPages.privacyPolicy,
                                          ),);
                                        },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      return AppButton(
                        onPressed: () {
                          var f = Form.of(context);
                          if (f != null && f.validate()) {
                            notifier.onSendOtpButtonTap(context);
                          }
                        },
                        buttonText: context.translate.getOTP,
                        buttonRadius: AppSizeConstants.kBorderRadius,
                        textStyle: TextStyles.body1Medium,
                        buttonColor: AppColors.primary,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
      provider: registerAccountNotifierProvider,
    );
  }
}
