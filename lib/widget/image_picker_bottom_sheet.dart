import 'dart:io';
import 'dart:ui';

import 'package:riverpod_structure/l10n/localization.dart';
import 'package:riverpod_structure/router/navigation_methods.dart';
import 'package:riverpod_structure/theme/app_colors.dart';
import 'package:riverpod_structure/utils/loader_util/loading_dialog.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

import 'package:permission_handler/permission_handler.dart';
import 'package:picker_pro_max_ultra/media_picker_widget.dart';


import '../../../utils/logger_util.dart';

import '../../enums/image_type.dart';
import '../constants/app_constants.dart';
import '../enums/picker_type.dart';
import '../theme/text_styles.dart';
import '../utils/common_methods.dart';
import '../utils/snackbar_widget.dart';

class ImagePickSheet extends StatelessWidget {
  final PickerType type;
  final Function()? onGallerySelect;
  final Function()? onCameraSelect;
  final Function()? onVideoSelect;
  final Function()? onDocumentSelect;

  const ImagePickSheet({
    super.key,
    this.onGallerySelect,
    this.onCameraSelect,
    this.onVideoSelect,
    this.onDocumentSelect,
    this.type = PickerType.gallery,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    bool isDarkMode = theme.brightness == Brightness.dark;

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        padding:
        const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
                "Select upload option",
                style: TextStyles.body1Regular,
            ),
            const SizedBox(height: 24),
            Row(
              spacing: 10,
              mainAxisAlignment:  MainAxisAlignment.center,
              children: [
                /// Camera
                ///
                if(type == PickerType.all || type == PickerType.image || type == PickerType.camera)
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    onCameraSelect!();
                  },
                  child: _imageTypeContainer(
                    context,
                    title: "Take A Photo",
                    icon: Icons.camera_alt_rounded,
                  ),
                ),


                /// Gallery
                ///
                if(type == PickerType.all || type == PickerType.image || type == PickerType.gallery)
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    onGallerySelect!();
                  },
                  child: _imageTypeContainer(
                    context,
                    title: "Choose From Gallery",
                    icon: Icons.photo,
                  ),
                ),



                if(type == PickerType.all || type == PickerType.video )
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      onVideoSelect!();
                    },
                    child: _imageTypeContainer(
                      context,
                      title: "Choose From Gallery",
                      icon: Icons.video_call_rounded,
                    ),
                  ),


                if(type == PickerType.all || type == PickerType.document )
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      onDocumentSelect!();
                    },
                    child: _imageTypeContainer(
                      context,
                      title: "Document",
                      icon: Icons.file_copy,
                    ),
                  ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _imageTypeContainer(
      BuildContext context, {
        required String title,
        required IconData? icon,
      }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: AppColors.primary,
        ),
        height: 80,
        width: 80,
        child: Center(
          child: Icon(
            icon,
            size: 32,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }

  static Future<void> showImagePickBottomSheet({
    required BuildContext context,
    bool isDismissible = true,
    int limit = 1,
    PickerType type = PickerType.all,
    Function(XFile selectedImg)? onCameraImage,
    Function(List<XFile> selecteVideo)? onSelectVideo,
    Function(File selecteDocument)? onSelectDocument,
    Function(List<XFile> multiSelect)? onGalleryPhotos,
  }) async {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      useSafeArea: true,
      isDismissible: isDismissible,
      builder: (context) {
        return ImagePickSheet(
          onGallerySelect: () async {

            context.pop();

            bool isEnable = await CommonMethods.askPermission(
              permission: await CommonMethods.getPermission(MediaType.image), // todo manage this dynamic
              whichPermission: "Gallery",
            );
            if (isEnable) {
                AppConstants.globalKey.currentContext?.loading.show();
             await  MediaPicker(
                    context: AppConstants.globalKey.currentContext!,maxLimit: limit,
                     mediaType: MediaType.image,
                     doneText: AppConstants.globalKey.currentContext!.translate.done,
               cancelText: AppConstants.globalKey.currentContext!.translate.cancel
             ).showPicker().then((images) async {

               AppConstants.globalKey.currentContext?.loading.hide();
                  if ( images != null && images.isNotEmpty) {


                    for(int i = 0;i<images.length;i++){
                      logger.i("IMAGE PICKED: ${images[i]}");
                      final XFile imageFile = XFile(images[i]);



                      if (imageFile.path.toLowerCase().endsWith("jpg") ||
                          imageFile.path.toLowerCase().endsWith("png") ||
                          imageFile.path.toLowerCase().endsWith("jpeg") ||
                          imageFile.path.toLowerCase().endsWith("heic")) {
                        bool isValidImage = await CommonMethods.imageSize(imageFile);
                        logger.i("IMAGE PICKED $isValidImage : $imageFile");

                        if (isValidImage) {
                          if(i == images.length-1){
                            onGalleryPhotos!(images.map((f)=>XFile(f)).toList());
                          }

                        } else {
                          showToast(AppConstants.globalKey.currentState!.context.translate.fileSizeValidation,success: false);
                          break;
                        }
                      } else {
                        showToast(AppConstants.globalKey.currentState!.context.translate.imageFormatValidation,success: false);

                      }
                    }
                  }

                }).catchError((_){
                  AppConstants.globalKey.currentContext?.loading.hide();
             });




            }
          },
          onCameraSelect: () async {

            context.pop();

            bool isEnable = await CommonMethods.askPermission(
              permission: Permission.camera, // todo manage this dynamic
              whichPermission: "Camera",
            );
            if (isEnable) {
                AppConstants.globalKey.currentContext?.loading.show();
                final XFile? imageFile = await ImagePicker().pickImage(
                  source: ImageSource.camera,
                  imageQuality: 65,
                );
                AppConstants.globalKey.currentContext?.loading.hide();
                if (imageFile != null) {
                  if (imageFile.path.toLowerCase().endsWith("jpg") ||
                      imageFile.path.toLowerCase().endsWith("png") ||
                      imageFile.path.toLowerCase().endsWith("jpeg") ||
                      imageFile.path.toLowerCase().endsWith("heic")) {
                    bool isValidImage = await CommonMethods.imageSize(imageFile);

                    if (isValidImage) {
                      onCameraImage!(imageFile);
                    } else {
                      showToast(AppConstants.globalKey.currentState!.context.translate.fileSizeValidation,success: false);
                    }
                  } else {
                    showToast(AppConstants.globalKey.currentState!.context.translate.imageFormatValidation,success: false);
                  }

                  logger.i("IMAGE PICKED: ${imageFile.path}");
                }
              }
          },
          onVideoSelect: () async {

            context.pop();

            bool isEnable = await CommonMethods.askPermission(
              permission: await CommonMethods.getPermission(MediaType.video), // todo manage this dynamic
              whichPermission: "Gallery",
            );
            if (isEnable) {
              AppConstants.globalKey.currentContext?.loading.show();
              await  MediaPicker(
                  context: AppConstants.globalKey.currentContext!,maxLimit: limit,
                  mediaType: MediaType.video
              ).showPicker().then((images) async {
                AppConstants.globalKey.currentContext?.loading.hide();
                if ( images != null && images.isNotEmpty) {



                  for(int i = 0;i<images.length;i++){
                    var d = File(images[i]);
                    print(d.path);
                    final XFile imageFile = XFile(images[i]);
                     print(images[i]);


                    if (
                        imageFile.path.toLowerCase().endsWith("mp4") ||
                        imageFile.path.toLowerCase().endsWith("mov") ||
                        imageFile.path.toLowerCase().endsWith("avi") ||
                        imageFile.path.toLowerCase().endsWith("mkv") ||
                        imageFile.path.toLowerCase().endsWith("flv") ||
                        imageFile.path.toLowerCase().endsWith("wmv") ||
                        imageFile.path.toLowerCase().endsWith("webm") ||
                        imageFile.path.toLowerCase().endsWith("3gp") ||
                        imageFile.path.toLowerCase().endsWith("mpeg")
                    ) {
                      bool isValidImage = await CommonMethods.imageSize(imageFile);
                      logger.i("IMAGE PICKED: $imageFile");

                      if (isValidImage) {
                        if(i == images.length-1){
                          onSelectVideo!(images.map((f)=>XFile(f)).toList());
                        }

                      } else {
                        showToast("Please select proper format ",success: false);
                        break;
                      }
                    }
                    else {
                      showToast("Please select proper format ",success: false);
                    }
                  }
                }

              }).catchError((_){
                AppConstants.globalKey.currentContext?.loading.hide();
              });




            }
          },
          onDocumentSelect: ()async{
            FilePickerResult? result = await FilePicker.platform.pickFiles(
              type: FileType.custom,
              allowedExtensions: ['pdf', 'doc'],
            );
            if (result != null) {
              File file = File(result.files.single.path!);
              onSelectDocument!(file);
              logger.i("File PICKED: ${result.files.single.path!}");
            } else {
              logger.i("else PICKED:}");
            }
          },
          type: type,

        );
      },
    );
  }

  /// gallery permission






}
