import 'package:flutter/material.dart';
import 'package:splitwise_flutter/utilis/color_constants.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  TextEditingController editingController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? selectedTimezone = '(GMT+05:00) Islamabad';
  String? selectedCurrency = 'PKR';
  String? selectedLanguage = 'English';

  // Dropdown options
  final List<String> timezones = [
    '(GMT-08:00) Pacific Time',
    '(GMT+00:00) UTC',
    '(GMT+05:00) Islamabad',
    '(GMT+09:00) Tokyo',
  ];

  final List<String> currencies = ['USD', 'PKR', 'EUR', 'INR'];

  final List<String> languages = ['English', 'Urdu', 'French', 'Spanish'];
  @override
  Widget build(BuildContext context) {
    editingController.text = 'Zain Ahmad';
    emailController.text = 'zainj480@gmail.com';
    phonenumberController.text = '+923090180876';
    passwordController.text = 'mercedes@2000';
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Account settings",
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade700),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Full name",
                style: TextStyle(
                  fontSize: 14,
                  color: ColorConstants.secondary,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 15,
                      child: TextFormField(
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                        controller: editingController,
                        keyboardType: TextInputType.text,
                        cursorColor: ColorConstants.primary,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            "assets/icons/pencil.png",
                            width: 16,
                            color: Colors.blue.shade500,
                          ),
                          Text("Edit",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blue.shade500,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Email address",
                style: TextStyle(
                  fontSize: 14,
                  color: ColorConstants.secondary,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 15,
                      child: TextFormField(
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                        controller: emailController,
                        keyboardType: TextInputType.text,
                        cursorColor: ColorConstants.primary,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            "assets/icons/pencil.png",
                            width: 16,
                            color: Colors.blue.shade500,
                          ),
                          Text("Edit",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blue.shade500,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Phone number",
                style: TextStyle(
                  fontSize: 14,
                  color: ColorConstants.secondary,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 15,
                      child: TextFormField(
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                        controller: phonenumberController,
                        keyboardType: TextInputType.text,
                        cursorColor: ColorConstants.primary,
                        decoration: const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            "assets/icons/pencil.png",
                            width: 16,
                            color: Colors.blue.shade500,
                          ),
                          Text("Edit",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blue.shade500,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Text("Confirm your phone number",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue.shade500,
                  )),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Password",
                style: TextStyle(
                  fontSize: 14,
                  color: ColorConstants.secondary,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 12,
                      child: TextFormField(
                        obscureText: true,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                        controller: passwordController,
                        keyboardType: TextInputType.text,
                        cursorColor: ColorConstants.primary,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            "assets/icons/pencil.png",
                            width: 16,
                            color: Colors.blue.shade500,
                          ),
                          Text("Edit",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blue.shade500,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // Timezone Picker
              const Text('Time zone', style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                height: 30,
                width: 235,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: DropdownButtonFormField<String>(
                  dropdownColor: Colors.white,
                  value: selectedTimezone,
                  items: timezones
                      .map((timezone) => DropdownMenuItem(
                            value: timezone,
                            child: Text(timezone),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedTimezone = value;
                    });
                  },
                  decoration: InputDecoration(
                    focusColor: Colors.grey,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(color: Colors.black)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(color: Colors.black)),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Currency Picker
              const Text('Default currency',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                height: 30,
                width: 235,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: DropdownButtonFormField<String>(
                  dropdownColor: Colors.white,
                  value: selectedCurrency,
                  items: currencies
                      .map((currency) => DropdownMenuItem(
                            value: currency,
                            child: Text(currency),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedCurrency = value;
                    });
                  },
                  decoration: InputDecoration(
                    focusColor: Colors.grey,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(color: Colors.black)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(color: Colors.black)),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Language Picker
              const Text('Language (for emails and notifications)',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                height: 30,
                width: 235,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: DropdownButtonFormField<String>(
                  // icon: Icon(Icons.arrow_circle_down),
                  dropdownColor: Colors.white,
                  value: selectedLanguage,
                  items: languages
                      .map((language) => DropdownMenuItem(
                            value: language,
                            child: Text(language),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedLanguage = value;
                    });
                  },
                  decoration: InputDecoration(
                    focusColor: Colors.grey,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(color: Colors.black)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(color: Colors.black)),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Privacy settings",
                style: TextStyle(
                  fontSize: 14,
                  color: ColorConstants.secondary,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.check_box,
                    color: Colors.blue,
                    size: 10,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: RichText(
                      maxLines: 4,
                      text: TextSpan(
                        text:
                            "Allow Splitwise to suggest me as a friend to other users",
                        style: TextStyle(
                            fontSize: 13,
                            color: ColorConstants.secondary,
                            fontWeight: FontWeight.w500),
                        children: [
                          TextSpan(
                              text:
                                  " Splitwise will only recommend you to users who already have your email address or phone number in their phone's contact book",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.w600,
                                fontFamily: "inter",
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: 125,
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                    child: Text(
                  "Save Changes",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                "Advanced Features",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Block other users",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Container(
                height: 30,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200.withOpacity(0.2),
                        spreadRadius: 0.1,
                        blurRadius: 0,
                        offset: const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    border: Border.all(width: 0.5),
                    borderRadius: BorderRadius.circular(3)),
                child: const Center(
                    child: Text(
                  "Manage your blocklist",
                  style: TextStyle(fontSize: 12),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Your Account",
                style: TextStyle(fontSize: 12),
              ),
              Container(
                height: 30,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200.withOpacity(0.2),
                        spreadRadius: 0.1,
                        blurRadius: 0,
                        offset: const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    border: Border.all(width: 0.5),
                    borderRadius: BorderRadius.circular(3)),
                child: const Center(
                    child: Text(
                  "Delete your Account",
                  style: TextStyle(fontSize: 12),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
