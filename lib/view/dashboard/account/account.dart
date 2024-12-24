import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:splitwise_flutter/common/widget/custom_carousal.dart';
import 'package:splitwise_flutter/view/dashboard/account/splitwise_pro.dart';
import '../../../utilis/color_constants.dart';
import '../../auth/login_in.dart';
import 'account_settings.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> openCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  File? _selectedImage;
  final ImagePicker gallerypicker = ImagePicker();

  Future<void> openLibrary() async {
    final pickedFile =
        await gallerypicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius:
            BorderRadius.vertical(top: Radius.circular(16)), // Rounded corners
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                //   leading: Icon(Icons.link),
                titleAlignment: ListTileTitleAlignment.center,
                title: Center(
                    child: const Text(
                  'Remove Picture',
                  style: TextStyle(color: Colors.red),
                )),
                onTap: () {
                 Navigator.pop(context);
                },
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.2,
                height: 15,
              ),
              ListTile(
                //    leading: Icon(Icons.share),

                title: InkWell(
                  onTap: openCamera,
                  child: const Center(
                      child: Text(
                    'Take a picture',
                    style: TextStyle(color: Colors.blue),
                  )),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the bottom sheet
                },
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.2,
                height: 15,
              ),
              ListTile(
                //   leading: Icon(Icons.link),
                titleAlignment: ListTileTitleAlignment.center,
                title: Center(
                    child: InkWell(
                  onTap: openLibrary,
                  child: const Text(
                    'Choose from Library',
                    style: TextStyle(color: Colors.blue),
                  ),
                )),
                onTap: () {
                  Navigator.pop(context); // Close the bottom sheet
                },
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.2,
                height: 15,
              ),
              ListTile(
                //   leading: Icon(Icons.link),
                titleAlignment: ListTileTitleAlignment.center,
                title: const Center(
                    child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.blue),
                )),
                onTap: () {
                  Navigator.pop(context); // Close the bottom sheet
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Account"),
        clipBehavior: Clip.antiAlias,
        centerTitle: true,
        leading: const Icon(Icons.search),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 26,
              ),
              Text(
                "settings",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.secondary,
                    letterSpacing: 0.4),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AccountSettings()));
                },
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _showBottomSheet(context);

                        setState(() {});
                      },
                      child: CircleAvatar(
                        radius: 32,
                        backgroundImage:
                            const AssetImage("assets/images/kkkkkk.jpg"),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      12), // Match the border radius
                                  child: Image.asset(
                                    "assets/icons/camera.png",
                                    height: 25,
                                    width: 25,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Zain Ahmad",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: ColorConstants.secondary),
                        ),
                        const Text(
                          "zainj480@gmail.com",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              letterSpacing: 0),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 159,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey.shade400,
                      size: 16,
                    )
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.2,
                height: 25,
              ),
              const SizedBox(
                height: 5,
              ),
              InkWell(
                onTap: openCamera,
                child: Row(
                  children: [
                    const Icon(Icons.qr_code),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Scan code",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.secondary,
                      ),
                    ),
                    const SizedBox(
                      width: 229,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey.shade400,
                      size: 16,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.2,
                height: 25,
              ),
              InkWell(
                child: Row(
                  children: [
                    const Icon(
                      Icons.diamond,
                      color: Colors.purple,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Splitwise Pro",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.secondary,
                      ),
                    ),
                    const SizedBox(
                      width: 208,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey.shade400,
                      size: 16,
                    )
                  ],
                ),
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SplitwisePro()));
                  });
                },
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Preferences",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey.shade800,
                    letterSpacing: 0.4),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Notifications",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ColorConstants.secondary,
                        letterSpacing: 0.3),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey.shade400,
                    size: 16,
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.5,
                height: 25,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Security",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ColorConstants.secondary,
                        letterSpacing: 0.3),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey.shade400,
                    size: 16,
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                "Feedback",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey.shade800,
                    letterSpacing: 0.4),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rate Splitwise",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ColorConstants.secondary,
                        letterSpacing: 0.1),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey.shade400,
                    size: 16,
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.2,
                height: 18,
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Contact us",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ColorConstants.secondary,
                        letterSpacing: 0.1),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey.shade400,
                    size: 16,
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.7,
                height: 25,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                   context.go(LogInScreen.route);
                  },
                  child: Text(
                    "Log out",
                    style:
                        TextStyle(fontSize: 17, color: ColorConstants.primary),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "Made with :) in Providence RI, USA\nUSA Copyright @ 2024 Splitwise, Inc.\nP.S. kittens!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorConstants.secondary,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                  child: Text(
                "24.11.2/899",
                style: TextStyle(
                    color: ColorConstants.secondary,
                    fontWeight: FontWeight.w500),
              )),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
