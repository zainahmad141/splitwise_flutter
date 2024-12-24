import 'package:flutter/material.dart';

import '../../common/widget/custom_carousal.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  static const route="/WelcomeScreen";

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<String> imageList = [
    'assets/images/image31.jpeg',
    'assets/images/image32.jpeg',
    'assets/images/image33.jpeg',
    'assets/images/image911.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:
        [
          CustomImageCarousel(imageUrls: imageList),
        ],
      ),
    );
  }
}
