import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  const SlideInfo({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

}

final slides = <SlideInfo>[
  const SlideInfo(
    title: 'Busca la comida',
    caption: 'Elit ea labore deserunt ut do incididunt ad magna in.',
    imageUrl: 'assets/images/1.png',
  ),
  const SlideInfo(
    title: 'Entrega rapidaa',
    caption: 'Amet non duis nostrud in anim sint elit laboris excepteur labore.',
    imageUrl: 'assets/images/2.png',
  ),
  const SlideInfo(
    title: 'Disfruta la comida',
    caption: 'Consequat aute exercitation sunt amet non.',
    imageUrl: 'assets/images/3.png',
  ),
];

class AppTutorialScreen extends StatelessWidget {

  static const String name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides.map((slideData) => _Slide(
          title: slideData.title,
          caption: slideData.caption,
          imageUrl: slideData.imageUrl,
        )).toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}