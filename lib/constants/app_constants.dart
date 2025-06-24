import 'package:riverpod_structure/widget/drop_down/dropdown_model.dart';
import 'package:flutter/material.dart' hide Banner;
import 'package:google_maps_flutter/google_maps_flutter.dart';


import '../enums/language_code.dart';
import '../gen/assets.gen.dart';
import '../services/google_place/google_place_model.dart';
import '../src/domain/model/init_model/init_model.dart';
import '../src/domain/model/user_model/user_model.dart';

class AppConstants {

  static GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();
  static String googleMapKey = "";
  // static String googleMapKey = "AIzaSyCdRMa0udvixtc5FFKXUq2uDWgoRf9e2po";


  static LanguageCode defaultLocale = LanguageCode.en;
  static ThemeMode defaultTheme = ThemeMode.light;
  static LanguageCode currentLocale = defaultLocale;
  static double currentLatitude = 0.0;
  static double currentLongitude = 0.0;

  static LatLng currentLatLng = const LatLng(0, 0);

  static GooglePlaceModel? userLocation;

  static List<String> paymentMethodList()=>[
    Assets.images.png.visa.path,
    Assets.images.png.master.path,
    Assets.images.png.stc.path,
    Assets.images.png.undefined.path,
    Assets.images.png.tabby.path,
    Assets.images.png.tamara.path,
    Assets.images.png.applePay.path,
    Assets.images.png.madfu.path,
  ];
  static String firebaseToken = "1234";

  static double kButtonHeight = 48;


  static UserModel? userModel;
  static S3Model? s3Model;

  static bool isLoggedIn = false;
  static bool isOtpVerified = false;

  static List<String> dummyStringList = [
   '1_label','2_label','3_label','4_label','5_label','6_label','7_label','8_label'
  ];






}
