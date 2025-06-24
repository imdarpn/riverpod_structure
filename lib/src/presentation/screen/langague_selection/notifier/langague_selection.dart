import 'dart:ui';

import 'package:riverpod_structure/constants/storage_constants.dart' show StorageConstants;
import 'package:riverpod_structure/di/app_providers.dart';
import 'package:riverpod_structure/enums/language_code.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../constants/app_constants.dart';
import '../../../../data/repository/local/local_repository.dart';
import '../state/language_selection_state.dart';

part 'langague_selection.g.dart';

@riverpod
class LanguageSelectionNotifier extends _$LanguageSelectionNotifier {
  LocalRepository? localRepository;

  @override
  LanguageSelectionState build() {
    localRepository = ref.read(localRepositoryProvider);
    localRepository?.setData(StorageConstants.languageOpen, true);
    return LanguageSelectionState(selectedLocale: AppConstants.defaultLocale);
  }

  void toggle(LanguageCode ar) {
    if (state.selectedLocale != ar) {
      state = state.copyWith(selectedLocale: ar);
    }
  }

}
