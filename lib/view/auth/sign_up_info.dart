import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart' as intl;
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:splitwise_flutter/common/widget/custom_carousal.dart';
import 'package:splitwise_flutter/view/auth/login_in.dart';
import 'package:splitwise_flutter/view/onboarding/welcome_screen.dart';

import 'package:splitwise_flutter/common/widget/custom_button.dart';
import 'package:splitwise_flutter/utilis/color_constants.dart';

class SignupInfo extends StatefulWidget {
  const SignupInfo({super.key});
  static const route="/SignupInfo";
  @override
  State<SignupInfo> createState() => _SignState();
}

class _SignState extends State<SignupInfo> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  String initialCountry = 'US'; // Default country code for the picker
  intl.PhoneNumber number = intl.PhoneNumber(isoCode: 'US'); // Default phone number object
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Text(
              "Sign up",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade800),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 5),
            child: Text(
              "Full Name",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade800),
            ),
          ),
          Center(
            child: SizedBox(
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
              "Phone Number",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade800),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25.0,right: 25),
            padding: const EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(10)
            ),
            child: InternationalPhoneNumberInput(
              onInputChanged: (intl.PhoneNumber value) {
                print("Country Code: ${value.dialCode}, Number: ${value.phoneNumber}");
              },
              onInputValidated: (bool isValid) {
                print("Phone number is valid: $isValid");
              },
              selectorConfig: const SelectorConfig(
                selectorType: PhoneInputSelectorType.DIALOG,
              ),
              ignoreBlank: false,
              autoValidateMode: AutovalidateMode.disabled,
              initialValue: number,
              textFieldController: phoneController,
              // formatInput: true,
              keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
              inputDecoration: InputDecoration(
                hintText: "Enter phone number",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.white, width: 1),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.white, width: 1),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.white, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.white, width: 1.2),
                ),
              ),
              selectorTextStyle: const TextStyle(color: Colors.black),
            ),
          ),

          const SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              "I use PKR (Rs) as my currency.",
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
                btnName: 'Done',
                bgColor: ColorConstants.primary,
                callback: () {
                  context.go(LogInScreen.route);
                },
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "By signing up, you accept the SplitWise Terms of Service \n and Privacy Policy",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade800),
            ),
          ),
        ],
      ),
    );
  }
}
