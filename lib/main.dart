import 'package:flutter/material.dart';
import 'package:splitwise_flutter/utilis/routes.dart';

void main() {
  runApp(const SplitWise());
}

class SplitWise extends StatelessWidget {
  const SplitWise({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      // theme: ThemeData(
      //   appBarTheme: const AppBarTheme(
      //     iconTheme: IconThemeData(
      //       color: Colors.blue, // Change the color of the back icon
      //     ),
      //     toolbarTextStyle: TextStyle(
      //       color: Colors.black,
      //     ),
      //     // backwardsCompatibility: false, // Ensure full theme customization
      //     // leading: Icon(Icons.arrow_back_ios),
      //   ),
      // ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
