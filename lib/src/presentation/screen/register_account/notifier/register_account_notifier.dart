
import 'package:riverpod_structure/constants/api_constants.dart';
import 'package:riverpod_structure/l10n/localization.dart';
import 'package:riverpod_structure/router/navigation_methods.dart';
import 'package:riverpod_structure/src/presentation/screen/verify_otp/VerifyOtpArgs.dart';
import 'package:riverpod_structure/utils/loader_util/loading_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../di/app_providers.dart';
import '../../../../../utils/logger_util.dart';
import '../../../../../utils/snackbar_widget.dart';
import '../../../../data/repository/local/local_repository.dart';
import '../../../../data/repository/remote/remote_repository.dart';
import '../state/register_account_state.dart';



part 'register_account_notifier.g.dart';



@riverpod
class RegisterAccountNotifier extends _$RegisterAccountNotifier {
  LocalRepository? localRepository;
  RemoteRepository? remoteRepository;

  @override
  RegisterAccountState build() {
    localRepository = ref.read(localRepositoryProvider);
    remoteRepository = ref.read(remoteRepositoryProvider);

    return RegisterAccountState(
      mobileNumberController: TextEditingController(text: kDebugMode ? "123456788" : ""),
      termsRead: kDebugMode ? true : false,
      formKey: GlobalKey<FormState>(),);
  }

  void toggle(bool value) {
      state = state.copyWith(termsRead: value);
  }

 void onSendOtpButtonTap(BuildContext context){
      if(state.termsRead){
        loginOrRegister(context,state.mobileNumberController!.text.trim(),ApiConstants.loginPath);
      }else{
        showToast( context.translate.tCValidate, success: false);
      }
    }

  Future<bool?> loginOrRegister(BuildContext context ,String mobile,String path ) async {

    bool isDone;
    try {
      context.loading.show();
      final response = await remoteRepository!.loginOrRegister(phone: mobile,path: path);
      context.loading.hide();
      if (response.success) { 
        context.pushNamed(Routes.verifyOtp,arguments: VerifyOtpArgs(mobileNo: mobile,path: path));
        showToast( response.message + response.jsonData['otp']);
      }else{
        showToast( response.message, success: false);
        return false;
      }
    } catch (e) {
      context.loading.hide();
      logger.e("callInitApi: $e");
      return false;
    }
  }
}