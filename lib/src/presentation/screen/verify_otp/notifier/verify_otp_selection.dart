import 'package:riverpod_structure/constants/api_constants.dart';
import 'package:riverpod_structure/constants/app_constants.dart';
import 'package:riverpod_structure/router/navigation_methods.dart';
import 'package:riverpod_structure/src/domain/model/user_model/user_model.dart';
import 'package:riverpod_structure/src/presentation/screen/register_account/notifier/register_account_notifier.dart';
import 'package:riverpod_structure/utils/loader_util/loading_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../constants/storage_constants.dart';
import '../../../../../di/app_providers.dart';
import '../../../../../router/app_pages.dart';
import '../../../../../utils/logger_util.dart';
import '../../../../../utils/snackbar_widget.dart';
import '../../../../data/repository/local/local_repository.dart';
import '../../../../data/repository/remote/remote_repository.dart';
import '../state/verify_otp_state.dart';

part 'verify_otp_selection.g.dart';

@riverpod
class VerifyOtpNotifier extends _$VerifyOtpNotifier {
  LocalRepository? localRepository;
  RemoteRepository? remoteRepository;

  @override
  VerifyOtpState build() {
    localRepository = ref.read(localRepositoryProvider);
    remoteRepository = ref.read(remoteRepositoryProvider);
    return VerifyOtpState(
      otpController: TextEditingController(),
      formKey: GlobalKey<FormState>(),
      countDownSeconds: kDebugMode?0:60
    );
  }

  void setCountDownSeconds({int? seconds}) {
    state = state.copyWith(countDownSeconds: seconds);
  }

  void onButtonTap(BuildContext context, String mobileNo, String path) {
    if (state.formKey!.currentState!.validate()) {
      verifyOtp(context,mobileNo,path);
    }
  }

  Future<void> verifyOtp(BuildContext context, String mobileNo,String path) async {
    try {
      context.loading.show();
      final response = await remoteRepository!.verifyOTP(
        phone: mobileNo,
        otp: state.otpController!.text.trim(),
        path: path
      );
      context.loading.hide();
      if (response.success) {
        if(path == ApiConstants.loginPath){
          UserModel userModel = UserModel.fromJson(response.jsonData);
          print("USEMODEL RESPONSE-- ${userModel}");
          localRepository!.setSession(userModel);
          localRepository!.setData(StorageConstants.token,userModel.accessToken);
          AppConstants.userModel = userModel;
          // callOnSubmit(context, ProfileDetailsType.createProfile,mobileNo);
          if (userModel.name?.isNotEmpty ?? false) {

          } else {

          }
        }else{
          AppConstants.isOtpVerified = true;
          context.pop();
        }
        showToast( response.message, success: true,);
      }else{
        state = state.copyWith(otpController: TextEditingController());
        showToast( response.message, success: false,);
      }
    } catch (e) {
      context.loading.hide();
      logger.e("verifyOtp: $e");
    }
  }


  Future<void> resendOTP(BuildContext context, String mobileNo, String path) async {
    try {
      context.loading.show();
      final response = await remoteRepository!.loginOrRegister(phone: mobileNo.trim(),path: path);
      context.loading.hide();
      if (response.success) {
        if(kDebugMode){
          state = state.copyWith(otpController: TextEditingController(text: response.jsonData['otp']));
        }
        showToast( response.message + response.jsonData['otp'], success: true);
      }
    } catch (e) {
      context.loading.hide();
      logger.e("resendOTP: $e");
    }
  }
}
