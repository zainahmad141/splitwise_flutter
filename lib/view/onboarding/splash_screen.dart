import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:splitwise_flutter/view/onboarding/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {



  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2)).then((value){
      context.push(WelcomeScreen.route);

    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8AE8D8),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/splash_screen.jpeg") ,
              fit: BoxFit.cover,
              )
            ),
          )
        ],
      ),
    );
  }
}
