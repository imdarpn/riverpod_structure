import 'dart:io';

import 'package:riverpod_structure/constants/app_constants.dart';
import 'package:riverpod_structure/src/data/repository/remote/remote_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../services/api_service/api_response.dart';
import '../../../../services/api_service/api_service.dart';
import 'package:package_info_plus/package_info_plus.dart';

class RemoteRepositoryImpl extends RemoteRepository {
  final ApiServices apiServices;

  RemoteRepositoryImpl({required this.apiServices});

  @override
  Future<ApiResponse> init() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    String device = Platform.isAndroid ? "android" : "ios";

    var d = await apiServices.initApi(
      version: packageInfo.version,
      appName: device,
    );

    return d;
  }

  @override
  Future<ApiResponse> loginOrRegister({
    required String phone,
    required String path,
  }) async {
    return await apiServices.loginOrRegister(
      jsonBody: {"phone": phone.trim()},
      path: path,
    );
  }

  @override
  Future<ApiResponse> verifyOTP({
    required String phone,
    required String otp,
    required String path,
  }) async {
    String device = Platform.isAndroid ? "android" : "ios";

    return await apiServices.verifyOTP(
      jsonBody: {
        "device_type": device,
        "device_token": AppConstants.firebaseToken,
        "phone": phone.trim(),
        "otp": otp.trim(),
      },
      path: path,
    );
  }

  @override
  Future<ApiResponse> cmsPageAPI({required String cmsPageEndPoint}) async {
    return await apiServices.cmsPageAPI(cmsPageEndPoint: cmsPageEndPoint);
  }

}
