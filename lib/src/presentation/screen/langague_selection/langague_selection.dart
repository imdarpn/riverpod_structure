import 'package:riverpod_structure/constants/app_constants.dart';
import 'package:riverpod_structure/constants/app_size_constants.dart';
import 'package:riverpod_structure/enums/language_code.dart';
import 'package:riverpod_structure/gen/assets.gen.dart';
import 'package:riverpod_structure/l10n/localization.dart';
import 'package:riverpod_structure/router/navigation_methods.dart';
import 'package:riverpod_structure/widget/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/local_notifier.dart';
import '../../../../enums/text_color_type.dart';
import '../../../../theme/app_colors.dart';
import '../../../../theme/text_styles.dart';
import '../../../../widget/app_button.dart';
import 'notifier/langague_selection.dart';

class LanguageSelection extends StatelessWidget {
  const LanguageSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        var state = ref.watch(languageSelectionNotifierProvider);
        return AppScaffold(
          body: SafeArea(
            minimum: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 20,
                bottom: 20,
            ),
              child: Column(
                children: [

                  const SizedBox(height: 30,),

                  Image.asset(Assets.images.png.welcomeIcon.path,filterQuality: FilterQuality.high,),
                  // Assets.images.svg.logoYellow.svg(),
                  Text(context.translate.select_language, style: TextStyles.h6SemiBold.copyWith(color: TextColorType.neutral9.resolve(context),),),
                  const SizedBox(height: 5,),
                  Text(AppConstants.globalKey.currentContext!.translate.switchLanguages, style: TextStyles.body1Regular.copyWith(color: AppColors.neutral6),),


                  const SizedBox(height: 10,),
                  Row(
                    spacing: 10,
                    children: [
                      Expanded(
                        child: AppButton(
                            onPressed: () {
                              ref.read(languageSelectionNotifierProvider.notifier).toggle(LanguageCode.ar);
                            },
                            buttonText : "عربي",
                            buttonRadius: 6,
                            buttonHeight: 70,
                            borderColor: state.selectedLocale == LanguageCode.ar ? AppColors.primary : AppColors.stroke,
                            buttonColor:  state.selectedLocale == LanguageCode.ar ? AppColors.bg3 : AppColors.white,
                            buttonWidth: double.infinity,
                            overlayColor: AppColors.transparent,
                            // textStyle:  state.selectedLocale != Lang.ar ?
                            // TextStyles.h6Medium.copyWith(
                            //   fontSize: 16,
                            // ): TextStyles.h6Medium
                          textStyle:  TextStyles.body1Medium.copyWith(fontSize: 20),
                        ),
                      ),
                      Expanded(
                        child: AppButton(
                          onPressed: () {
                            ref.read(languageSelectionNotifierProvider.notifier).toggle(LanguageCode.en);
                          },
                          buttonText : "English",
                          buttonRadius: 6,
                          buttonHeight: 70,
                          overlayColor: AppColors.transparent,
                          borderColor: state.selectedLocale == LanguageCode.en ? AppColors.primary : AppColors.stroke,
                          buttonColor:  state.selectedLocale == LanguageCode.en ? AppColors.bg3 : AppColors.white,
                          buttonWidth: double.infinity,
                          // textStyle:  state.selectedLocale != Lang.en ?
                          // TextStyles.h6Medium.copyWith(
                          //     fontSize: 16,
                          // ): TextStyles.h6Medium
                          textStyle:  TextStyles.body1Medium.copyWith(fontSize: 18),
                        ),
                      ),
                    ],
                  ),




                  const Spacer(),
                  AppButton(
                      onPressed: () async{
                        ref.read(localeNotifierProvider.notifier).changeLocale(lang: state.selectedLocale ?? AppConstants.defaultLocale);
                        context.pushNamed(Routes.onboarding);
                      },
                      buttonText : context.translate.next,
                      buttonRadius: AppSizeConstants.kBorderRadius,

                  ),
                ]
              )
          ),
        );
      },
    );
  }
}
