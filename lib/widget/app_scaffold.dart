import 'package:riverpod_structure/router/navigation_methods.dart';
import 'package:riverpod_structure/src/presentation/screen/langague_selection/langague_selection.dart';
import 'package:riverpod_structure/widget/app_annotated_region.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/app_constants.dart';
import '../di/local_notifier.dart';
import '../di/theme_notifier.dart';
import '../enums/language_code.dart';
import '../src/presentation/screen/langague_selection/notifier/langague_selection.dart';

class AppScaffold extends ConsumerWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final bool resizeToAvoidBottomInset;
  final PreferredSizeWidget? customAppBar;
  final Color? backgroundColor;

  const AppScaffold({
    Key? key,
    required this.body,
    this.floatingActionButton,
    this.appBar,
    this.bottomNavigationBar,
    this.resizeToAvoidBottomInset = true,
    this.customAppBar,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: backgroundColor,
      body: AppAnnotatedRegion(child: SafeArea(child: body)),
      // floatingActionButton: floatingActionButton ?? FloatingActionButton(
      //     onPressed: () async {
      //   await ref.read(themeNotifierProvider.notifier).switchTheme();
      //   // ref.read(languageSelectionNotifierProvider.notifier).toggle(LanguageCode.en);
      //   // ref.read(localeNotifierProvider.notifier).changeLocale(lang: LanguageCode.en);
      // },
      // ),
      bottomNavigationBar: bottomNavigationBar,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
    );
  }
}
