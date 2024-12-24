import 'package:flutter/material.dart';
import 'package:splitwise_flutter/common/widget/custom_button.dart';
import 'package:splitwise_flutter/utilis/color_constants.dart';
import 'sign_up_info.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const route="/SignUpScreen";

  @override
  State<SignUpScreen> createState() => _SignState();
}

class _SignState extends State<SignUpScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool click = false;



  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: InkWell(child: Icon(Icons.arrow_back_ios ),
          onTap: (){
            Navigator.pop(context);
          },),



      ),
      backgroundColor: Colors.white,

      body: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Text(
              "Sign up",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400, color: Colors.grey.shade800),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 5),
            child: Text(
              "Email Address",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey.shade800),
            ),
          ),
          Center(
            child: Container(
              height: 80,
              width: 350,
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 5),
            child: Text(
              "Password",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600 , color: Colors.grey.shade800 ),
            ),
          ),
          Center(
            child: Container(
              height: 60,
              width: 350,
              child: TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: click,
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                    child: click?Icon(Icons.visibility_outlined) : Icon(Icons.visibility_off_outlined) ,
                    onTap: () {
                      setState(() {
                        click = !click;
                      });

                    },
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Text(
              "Minimum 8 characters",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade800),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.9),
                    spreadRadius: 0.5,
                    blurRadius: 3,
                    offset: const Offset(0, 3),
                  )
                ],
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                color: ColorConstants.primary,
              ),
              child: CustomButton(
                btnName: 'Next',
                bgColor: ColorConstants.primary,
                callback: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => SignupInfo()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
