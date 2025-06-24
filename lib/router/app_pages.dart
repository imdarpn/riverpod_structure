
import 'package:riverpod_structure/src/presentation/screen/cms_html_page/cms_html_page_args.dart';
import 'package:riverpod_structure/src/presentation/screen/cms_html_page/cms_html_page_screen.dart';
import 'package:riverpod_structure/src/presentation/screen/langague_selection/langague_selection.dart';
import 'package:riverpod_structure/src/presentation/screen/verify_otp/VerifyOtpArgs.dart';
import 'package:flutter/material.dart';

import '../src/presentation/screen/register_account/register_account.dart';
import '../src/presentation/screen/splash/splash_screen.dart';
import '../src/presentation/screen/verify_otp/verify_otp.dart';

part 'app_routes.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {

    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          settings: settings,
          builder:
              (context) => const SplashScreen(),
        );

      case Routes.languageSelection:
        return MaterialPageRoute(
          settings: settings,
          builder:
              (context) =>
                  const LanguageSelection(),
        );


      case Routes.registerAccount:
        return MaterialPageRoute(
          settings: settings,
          builder:
              (context) =>
                  const RegisterAccount(),
        );

      case Routes.verifyOtp:
        return MaterialPageRoute(
          settings: settings,
          builder:
              (context) => VerifyOtp(args: settings.arguments as VerifyOtpArgs,),
          
        );



      case Routes.cmsPages:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            return CmsHtmlPageScreen(args: settings.arguments as CmsHtmlPageArgs,);
          },

        );


      default:
        return null;
    }
  }
}

