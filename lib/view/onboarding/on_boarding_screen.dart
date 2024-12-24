import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:splitwise_flutter/common/widget/custom_button.dart';
import 'package:splitwise_flutter/common/widget/custom_carousal.dart';
import 'package:splitwise_flutter/utilis/color_constants.dart';
import '../auth/login_in.dart';
import '../auth/sign_up.dart';
import '../auth/sign_up_info.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static const route="/MainScreen";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 140,
            ),
            SizedBox(
              width: 250,
              child: Image.asset("assets/images/MainScreen1.jpeg"),
            ),
            CustomButton(
              btnName: 'Sign up',
              bgColor: const Color(0xff18A582),
              callback: () {
                context.push(SignUpScreen.route);
              },
            ),
            const SizedBox(height: 20),
            CustomButton(
              btnName: 'Login',
              bgColor: ColorConstants.secondary,
              callback: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LogInScreen()));
              },
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Terms",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Privacy Policy",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Contact us",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
            const SizedBox(
              height: 251,
            ),
            Image.asset("assets/images/MainScreen2.jpeg"),
          ],
        ),
      ),
    );
  }
}
