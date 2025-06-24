import 'package:riverpod_structure/router/navigation_methods.dart';
import 'package:riverpod_structure/src/data/repository/remote/remote_repository.dart';
import 'package:riverpod_structure/src/domain/model/init_model/init_model.dart';
import 'package:riverpod_structure/utils/snackbar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../constants/app_constants.dart';
import '../../../../../constants/storage_constants.dart';
import '../../../../../di/app_providers.dart';
import '../../../../../router/app_pages.dart';
import '../../../../../utils/logger_util.dart';
import '../../../../data/repository/local/local_repository.dart';
import '../../../../domain/model/user_model/user_model.dart';
import '../state/splash_state.dart';

part 'splash_notifier.g.dart';

@riverpod
class SplashNotifier extends _$SplashNotifier {
  LocalRepository? localRepository = ProviderContainer().read(
    localRepositoryProvider,
  );
  RemoteRepository? remoteRepository = ProviderContainer().read(
    remoteRepositoryProvider,
  );

  @override
  SplashState build() {
    if (ref.watch(getConnectivityProvider).value != null &&
        (ref.watch(getConnectivityProvider).value ?? false)) {
      callInitAPI();
    }
    return SplashState();
  }

  Future<void> callInitAPI() async {
    try {
      final response = await remoteRepository!.init();
      if (response.success) {
        InitModel initModel = InitModel.fromJson(response.jsonData);

        AppConstants.s3Model = initModel.s3;
        String? path = await redirectScreen();

        if (path?.isNotEmpty ?? false) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            AppConstants.globalKey.currentContext!.pushReplacementNamed(state.path);
          });
        }

      } else {
        showToast(response.message, success: false);
      }
    } catch (e) {
      logger.e("callInitApi: $e");
      //   String? path = await redirectScreen();
      //   state = state.copyWith(path: path!, screenState: ScreenState.done);
      //
    }
  }

  Future<String?> redirectScreen() async {
    bool showOnboard =
        await localRepository?.getData(StorageConstants.onBoard) ?? false;
    bool showLanguageScreen =
        await localRepository?.getData(StorageConstants.languageOpen) ?? false;
    UserModel? userModel = await localRepository?.getSession();

    AppConstants.userModel = userModel;

    // 👇 Check if a deep link was set
    final uri = ref.read(deepLinkUriProvider);
    if (uri != null) {
      // 👇 Deep link routing logic here
      if (uri.pathSegments.isNotEmpty) {

        // Add more routes based on deep link


      }
    }
    String path;
    if (userModel?.id != null) {
      if(userModel?.name?.isNotEmpty ?? false){
        path = Routes.homeStreetDeals;
      }else{
        path = Routes.personalDetails;
      }
    } else {
      path = Routes.languageSelection;
    }
    // if (!showLanguageScreen) {
    //   path = Routes.languageSelection;
    // } else if(!showOnboard) {
    //   path = Routes.onboarding;
    // } else {
    //   if(userModel?.isProfileComplete ?? false){
    //     path = Routes.homeStreetDeals;
    //   }else{
    //     path = Routes.registerAccount;
    //   }
    // }
    return path;
  }
}
