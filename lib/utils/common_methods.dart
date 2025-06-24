import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:riverpod_structure/l10n/localization.dart';
import 'package:riverpod_structure/router/navigation_methods.dart';
import 'package:riverpod_structure/utils/loader_util/loading_dialog.dart';
import 'package:riverpod_structure/utils/snackbar_widget.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:picker_pro_max_ultra/media_picker_widget.dart';

import '../constants/app_constants.dart';
import '../constants/app_fonts.dart';
import '../enums/image_type.dart';
import '../enums/language_code.dart';
import '../gen/assets.gen.dart';
import '../theme/app_colors.dart';
import '../widget/app_dialog.dart';
import '../widget/image_picker_bottom_sheet.dart';
import '../widget/image_swiper_page.dart';
import 'logger_util.dart';

class CommonMethods {
  static const MethodChannel _channel = MethodChannel('video_thumbnail');

  static String emailRegExp =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  static String nameRegExp = r'^.{2,70}$';

  hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<bool> checkConnectivity() async {
    return await InternetConnectionChecker.instance.hasConnection;
  }

  static Future<int> getAndroidVersion() async {
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidDeviceInfo =
      await DeviceInfoPlugin().androidInfo;
      logger.log(
        "androidDeviceInfo.version.sdkInt: ${androidDeviceInfo.version.sdkInt}",
      );
      return androidDeviceInfo.version.sdkInt;
    } else {
      return 0;
    }
  }

  ///  Method for getting picked image size
  static Future<bool> imageSize(XFile file) async {
    final bytes = (await file.readAsBytes()).lengthInBytes;
    final kb = bytes / 1024;
    final mb = kb / 1024;

    logger.e("IMAGE SIZE ----$mb");

    if (mb <= 25) {
      return true;
    } else {
      return false;
    }
  }

  ///  Method for requesting location permission
  static Future<bool> askPermission({
    Permission? permission,
    String? whichPermission,
  }) async {
    bool isPermissionGranted = await permission!.isGranted;
    var shouldShowRequestRationale =
    await permission.shouldShowRequestRationale;

    if (isPermissionGranted) {
      return true;
    } else {
      if (!shouldShowRequestRationale) {
        var permissionStatus = await permission.request();
        logger.e("STATUS == $permissionStatus");
        if (permissionStatus.isPermanentlyDenied) {
          AppDialog.showAppAlertDialog(
            title: AppConstants.globalKey.currentState!.context.translate.permission,
            description:
            '${AppConstants.globalKey.currentState!.context.translate.pleaseAllowThe} $whichPermission ${AppConstants.globalKey.currentState!.context.translate.permissionFromSettings}',
            negativeText: AppConstants.globalKey.currentState!.context.translate.cancel,
            positiveText: AppConstants.globalKey.currentState!.context.translate.settings,
            onPositiveTap: () {
              openAppSettings();
            },
            context: AppConstants.globalKey.currentContext!,
          );
          return false;
        }
        if (permissionStatus.isGranted || permissionStatus.isLimited) {
          return true;
        } else {
          return false;
        }
      } else {
        var permissionStatus = await permission.request();
        if (permissionStatus.isGranted || permissionStatus.isLimited) {
          return true;
        } else {
          return false;
        }
      }
    }
  }

  static Future<Permission> getPermission(MediaType mediaType) async {
    if (mediaType == MediaType.video) {
      if (Platform.isAndroid) {
        return Permission.videos;
      } else {
        return Permission.storage;
      }
    } else {
      if (Platform.isAndroid && await CommonMethods.getAndroidVersion() < 33) {
        return Permission.storage;
      } else {
        return Permission.photos;
      }
    }
  }

  static void openImagePreview({
    required BuildContext context,
    required List<String> imageList,
    String title = "",
    int index = 0,
  }) {
    context.push(
      MaterialPageRoute(
        builder:
            (context) =>
            ImageSwiperPage(
              params: ImageSwiperPageParams(
                images: imageList,
                index: index,
                title: title,
              ),
            ),
      ),
    );
  }

  static List<String> getSelectedFileNames(List<XFile?> listOfFiles) {
    return listOfFiles
        .whereType<XFile>() // filters out nulls
        .map((xfile) => xfile.path)
        .toList();
  }

  static Container gradientBorder() {
    return Container(
      height: 1,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [AppColors.bg, AppColors.hintColor, AppColors.bg],
        ),
      ),
    );
  }

  /// animate camera
  static void animateCameraToLocation({
    required GoogleMapController mapController,
    required LatLng? targetLocation,
    double zoom = 15,
  }) {
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: targetLocation ??
              AppConstants.currentLatLng ??
              const LatLng(0, 0),
          zoom: targetLocation == null &&
              AppConstants.currentLatLng == null
              ? 1
              : zoom,
        ),
      ),
    );
  }

  static Future<String> getMapStyle() async {
    ThemeData theme = Theme.of(AppConstants.globalKey.currentState!.context);
    bool isDarkMode = theme.brightness == Brightness.dark;
    return isDarkMode
        ? await rootBundle.loadString('assets/map/night.json')
        : await rootBundle.loadString('assets/map/light.json');
  }

  static String getConvertedDate({
    String? inputDateFormat,
    String? outputDateFormat = "MMM dd, yyyy",
    String? date,
  }) {
    if (date == null || date.isEmpty) {
      return "";
    }
    try {
      String locale = AppConstants.currentLocale.name;

      DateTime inputDate = DateFormat(inputDateFormat, locale).parse(date);

      String dateFormat =
      DateFormat(outputDateFormat, locale).format(inputDate);
      return dateFormat;
    } catch (exception) {
      logger.e("getConvertedDate:$exception");
      return "";
    }
  }

}
