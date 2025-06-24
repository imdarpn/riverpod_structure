import 'dart:convert';

import 'package:riverpod_structure/l10n/localization.dart';
import 'package:riverpod_structure/router/navigation_methods.dart';
import 'package:riverpod_structure/services/api_service/api_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../../constants/app_constants.dart';
import '../../constants/storage_constants.dart';
import '../../di/app_providers.dart';
import '../../router/app_pages.dart';
import '../../utils/common_methods.dart';
import '../../utils/logger_util.dart';


class ApiInterceptors extends InterceptorsWrapper {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (!await CommonMethods.checkConnectivity()) {
      final customResponse = {
        'status': false,
        'message': AppConstants.globalKey.currentContext!.translate.noInternetMsg,
      };
      return handler.resolve(
        Response(
          requestOptions: options,
          data: customResponse,
          statusCode: 200,
        ),
      );
    }

    final method = options.method;
    final uri = options.uri;
    final data = options.data;

    ProviderContainer ref = ProviderContainer();

    String? token = await ref.read(localRepositoryProvider).getData(StorageConstants.token);
    String? lang = await ref.read(localRepositoryProvider).getData(StorageConstants.locale);
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = "Bearer $token";
    }



   options.headers['Accept'] = 'application/json';
   options.headers['Accept-Language'] = lang ?? AppConstants.currentLocale.name;
   options.headers['KEY'] = 'C2C@123*';

    if (method == 'GET') {
      logger.log(
        '✈️ REQUEST[$method] => PATH: $uri \n Token: ${options.headers}',
        printFullText: true,
      );
    } else {
      try {
        logger.log(
          '✈️ REQUEST[$method] => PATH: $uri \n Token:${options.headers} \n DATA: ${jsonEncode(data)}',
          printFullText: true,
        );
      } catch (e) {
        // If jsonEncode fails (usually for FormData), print manually
        if (data is FormData) {
          final buffer = StringBuffer();
          buffer.writeln('✈️ REQUEST[$method] => PATH: $uri');
          buffer.writeln('Token: ${options.headers}');
          buffer.writeln('FormData fields:');

          for (final field in data.fields) {
            buffer.write('  ${field.key}: ${field.value}');
          }

          buffer.writeln('FormData files:');
          for (final file in data.files) {
            buffer.writeln(
              '  ${file.key}: filename=${file.value.filename}',
            );
          }

          logger.log(buffer.toString(), printFullText: true);
        } else {
          logger.log(
            '✈️ REQUEST[$method] => PATH: $uri\n'
                'Token: ${options.headers}\n'
                'DATA: $data',
            printFullText: true,
          );
        }
      }
    }
    super.onRequest(options, handler);
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    final statusCode = response.statusCode;
    final uri = response.requestOptions.uri;
    final data = jsonEncode(response.data);

    logger.log(
      '✅ RESPONSE[$statusCode] => PATH: $uri\n DATA: $data',
      printFullText: true,
    );

      super.onResponse(response, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final statusCode = err.response?.statusCode!;
    final uri = err.requestOptions.path;
    var data = '';
    final responseData = err.response?.data;


    logger.log(
      '⚠️ ERROR[$statusCode] => PATH: $uri\n DATA: ${err.response?.data}',
      printFullText: true,
    );

    if (statusCode == 401 || statusCode == 403) {
      logger.i('CALLED onError');
      ProviderContainer().read(localRepositoryProvider).clearData();
      AppConstants.globalKey.currentContext!.popAllAndPush(Routes.registerAccount);
      return handler.resolve(
        Response(
          data: {
            'status': false,
            'message': AppConstants.globalKey.currentContext!.translate.apiLogoutMsg,
          },
          statusCode: 401,
          requestOptions: err.requestOptions,
        ),
      );
    }

     // if(err.requestOptions.connectTimeout!.inSeconds == 5){
     //   return handler.resolve(
     //     Response(
     //       data: {
     //         'success': false,
     //         'message': 'Request time out please your internet connection and try later',
     //       },
     //       statusCode: 408,
     //       requestOptions: err.requestOptions,
     //     ),
     //   );
     // }
    // ✅ Handle 422 Unprocessable Entity
    if (statusCode == 422) {
      String message = 'Validation failed';

      // Try to extract server message or error details
      if (responseData is Map && responseData.containsKey('message')) {
        message = responseData['message'].toString();
      } else if (responseData is Map && responseData.containsKey('errors')) {
        // Optional: extract first validation error
        final errors = responseData['errors'];
        if (errors is Map && errors.isNotEmpty) {
          final firstError = errors.values.first;
          if (firstError is List && firstError.isNotEmpty) {
            message = firstError.first.toString();
          }
        }
      }
      logger.log(
        '⚠️ ERROR[$statusCode] => PATH: $uri\n message: ${message}',
        printFullText: true,
      );
      return handler.resolve(
        Response(
          data: {
            'status': false,
            'message': message,
          },
          statusCode: 422,
          requestOptions: err.requestOptions,
        ),
      );
    }


    super.onError(err, handler);
  }
}
