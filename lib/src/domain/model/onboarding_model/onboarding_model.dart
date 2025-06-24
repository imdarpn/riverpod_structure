import 'package:riverpod_structure/l10n/localization.dart';

import '../../../../constants/app_constants.dart';
import '../../../../gen/assets.gen.dart';

class OnBoardingModel {
  String? imagePath;
  String? title;
  String? desc;
  String? buttonText;

  OnBoardingModel({this.imagePath, this.title, this.desc,this.buttonText});
}