import 'package:riverpod_structure/constants/api_constants.dart';
import 'package:riverpod_structure/enums/language_code.dart';
import 'package:riverpod_structure/l10n/localization.dart';

import '../constants/app_constants.dart';
import '../gen/assets.gen.dart';

enum CmsPages {
  aboutUs,
  terms,
  privacyPolicy,
}

extension CmsPagesExtension on CmsPages {
  String get value {
    switch (this) {
      case CmsPages.aboutUs:
        return AppConstants.globalKey.currentState!.context.translate.about;
      case CmsPages.terms:
        return AppConstants.globalKey.currentState!.context.translate.termsOfUse;
      case CmsPages.privacyPolicy:
        return AppConstants.globalKey.currentState!.context.translate.privacyPolicy;
    }
  }

  String get endPoint {
    switch (this) {
      case CmsPages.aboutUs:
        return ApiConstants.aboutUs;
      case CmsPages.terms:
        return ApiConstants.terms;
      case CmsPages.privacyPolicy:
        return ApiConstants.privacyPolicy;
    }
  }
}