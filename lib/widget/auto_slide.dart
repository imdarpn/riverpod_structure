import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'network_image.dart';

class AutoSlidingImages extends StatefulWidget {
  @override
  _AutoSlidingImagesState createState() => _AutoSlidingImagesState();
}

class _AutoSlidingImagesState extends State<AutoSlidingImages> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  int _currentPage = 0;
  List<String> images = [
    "https://images.pexels.com/photos/5872185/pexels-photo-5872185.jpeg",
    "https://images.pexels.com/photos/1331558/pexels-photo-1331558.jpeg",
    "https://images.pexels.com/photos/5872185/pexels-photo-5872185.jpeg",
  ];
  Timer? _timer;


  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_currentPage < images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0; // Restart at first image
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120,
          child: PageView.builder(
            controller: _pageController,

            itemCount: images.length,
            onPageChanged: (page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              return  AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 8.0),
                  child: NetworkImageWidget(
                    url: images[index],
                    width: 350,
                    fit: BoxFit.cover,
                    borderRadius: 20,
                  ),
                ),
              );
            },
          ),
        ),
       // const SizedBox(height: 20),
       //  Row(
       //    mainAxisAlignment: MainAxisAlignment.center,
       //    children: List.generate(images.length, (index) {
       //      return AnimatedContainer(
       //        duration: const Duration(milliseconds: 300),
       //        margin: const EdgeInsets.symmetric(horizontal: 2),
       //        decoration: BoxDecoration(
       //          borderRadius: BorderRadius.circular(9),
       //          color: _currentPage == index ? Colors.black : Colors.grey,
       //        ),
       //        height: 3,
       //        width: _currentPage == index ? 36 : 18,
       //      );
       //    }),
       //  ),
      ],
    );
  }
}
