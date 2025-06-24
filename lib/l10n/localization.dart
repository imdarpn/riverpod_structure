import 'package:riverpod_structure/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

extension Localization on BuildContext {
  AppLocalizations get translate => AppLocalizations.of(this)!;
}
