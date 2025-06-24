
import 'package:riverpod_structure/enums/language_code.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'language_selection_state.freezed.dart';

@freezed
class LanguageSelectionState with _$LanguageSelectionState {
  factory LanguageSelectionState({
    @Default(null) LanguageCode? selectedLocale,

  }) = _LanguageSelectionState;
}