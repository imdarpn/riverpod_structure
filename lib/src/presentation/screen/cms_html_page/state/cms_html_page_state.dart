import 'package:riverpod_structure/src/presentation/screen/cms_html_page/cms_html_page_args.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cms_html_page_state.freezed.dart';

@freezed
class CmsHtmlPageState with _$CmsHtmlPageState {
  factory CmsHtmlPageState({
    @Default('') String pageContent,
    CmsHtmlPageArgs? args,
  }) = _CmsHtmlPageState;
}
