import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class ImageSwiperPageParams {
  final List<String> images;
  final int index;
  final String title;

  ImageSwiperPageParams({
    required this.images,
    this.index = 0,
    this.title = '',
  });
}

class ImageSwiperPage extends StatelessWidget {
  final ImageSwiperPageParams params;

  const ImageSwiperPage({super.key, required this.params});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Swiper(
                index: params.index,
                itemBuilder: (BuildContext context, int index) {
                  return InteractiveViewer(
                    panEnabled: true,
                    minScale: 1.0,
                    maxScale: 4.0,
                    child: params.images[index].startsWith('http')?CachedNetworkImage(
                      imageUrl: params.images[index],
                      fit: BoxFit.contain,
                    ) : Image.file(
                      File(
                        params.images[index],
                      ),
                      fit: BoxFit.contain,
                    ),
                  );
                },
                loop: false,
                itemCount: params.images.length,
                pagination:
                    params.images.length <= 1
                        ? null
                        : SwiperPagination(
                          builder: DotSwiperPaginationBuilder(
                            color: AppColors.primary.withValues(alpha: 0.3),
                            activeColor: AppColors.primary,
                          ),
                        ),
                control:
                    params.images.length <= 1
                        ? null
                        : const SwiperControl(
                          padding: EdgeInsetsDirectional.symmetric(
                            horizontal: 24,
                          ),
                        ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
