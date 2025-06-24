import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';


import '../../../../services/api_service/api_response.dart';

abstract class RemoteRepository{

  Future<ApiResponse> init();

  Future<ApiResponse> cmsPageAPI({required String cmsPageEndPoint});

  Future<ApiResponse> loginOrRegister({required String phone, required String path});

  Future<ApiResponse> verifyOTP({required String phone, required String otp, required String path});

}