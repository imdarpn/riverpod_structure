import 'package:riverpod_structure/di/theme_notifier.dart';
import 'package:riverpod_structure/router/app_pages.dart';
import 'package:riverpod_structure/router/route_observer.dart';
import 'package:riverpod_structure/theme/app_theme.dart';
import 'package:riverpod_structure/widget/app_annotated_region.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'constants/app_constants.dart';
import 'di/local_notifier.dart';
import 'di/app_providers.dart';
import 'l10n/app_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        /// FOR INTERNET CHECK
        // if(ref.watch(getConnectivityProvider).value!= null && (ref.watch(getConnectivityProvider).value ?? false)){
        //
        // }
        return AppAnnotatedRegion(
          child: MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaler: TextScaler.noScaling, // keep font size as it is (not as per system fonts)
            ),
            child: MaterialApp(
              navigatorKey: AppConstants.globalKey,
              debugShowCheckedModeBanner: false,
              title: '',
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: ref.watch(themeNotifierProvider).value,
              initialRoute: Routes.splash,
              onGenerateRoute: AppRouter.onGenerateRoute,
              navigatorObservers: [RouteLoggingObserver()],

              locale: ref.watch(localeNotifierProvider).value,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              builder: (context, child) {
                return Overlay(
                  initialEntries: [
                    OverlayEntry(
                      builder: (context) => child!,
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}