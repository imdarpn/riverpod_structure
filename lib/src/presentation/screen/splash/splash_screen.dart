import 'package:riverpod_structure/l10n/localization.dart';
import 'package:riverpod_structure/router/navigation_methods.dart';
import 'package:riverpod_structure/theme/app_colors.dart';
import 'package:riverpod_structure/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../../../../gen/assets.gen.dart';
import 'notifier/splash_notifier.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final state = ref.watch(splashNotifierProvider);

        return Scaffold(
          backgroundColor: AppColors.tertiaryColor,
          body: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                spacing: 20,
                children: [
                  Assets.images.svg.splashC.svg(),

                  Assets.images.svg.splash2.svg(),
                ],
              ),
              Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.images.svg.logo.svg(),

                  Text(
                    context.translate.app_name,
                    style: TextStyles.subtitle1SemiBold.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
