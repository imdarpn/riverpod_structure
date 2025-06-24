import 'package:riverpod_structure/constants/app_constants.dart';
import 'package:riverpod_structure/di/app_providers.dart';
import 'package:riverpod_structure/src/data/repository/remote/remote_repository.dart';
import 'package:riverpod_structure/utils/loader_util/loading_dialog.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../../utils/logger_util.dart';
import '../cms_html_page_args.dart';
import '../state/cms_html_page_state.dart';

part 'cms_html_page_notifier.g.dart';

@riverpod
class CmsHtmlPageNotifier extends _$CmsHtmlPageNotifier {
  RemoteRepository? remoteRepository;
  @override
  CmsHtmlPageState build() {
    remoteRepository = ref.read(remoteRepositoryProvider);

    return CmsHtmlPageState();
  }

  getArguments(CmsHtmlPageArgs? args){
    if (state.args == null) {
      state = state.copyWith(args: args);

      callCMSPageAPI();
    }

  }

  Future<void> callCMSPageAPI() async {

    try {
      AppConstants.globalKey.currentContext!.loading.show();
      final response = await remoteRepository?.cmsPageAPI(cmsPageEndPoint: state.args!.cmsPageEndpoint ?? '');
      AppConstants.globalKey.currentContext!.loading.hide();
      if (response?.success ?? false) {
          state = state.copyWith(pageContent: response?.jsonData['content'] ?? '');
      }

    } catch (e) {
      AppConstants.globalKey.currentContext!.loading.hide();
      logger.e("callCMSPageAPI: $e");
    }
  }
}
