import 'package:flutter/material.dart';
import 'package:splitwise_flutter/common/widget/custom_button.dart';

class SplitwisePro extends StatefulWidget {
  const SplitwisePro({super.key});

  @override
  State<SplitwisePro> createState() => _SplitwiseProState();
}

class _SplitwiseProState extends State<SplitwisePro> {
  List<String> iconsList = [
    "assets/icons/infinity.png",
    "assets/icons/earth.png",
    "assets/icons/camera.png",
    "assets/icons/scanner.png",
    "assets/icons/list.png",
    "assets/icons/chart.png",
    "assets/icons/search.png",
    "assets/icons/splits.png",
    "assets/icons/candy.png",
  ];
  List<String> textList = [
    'Unlimited expenses',
    'Currency conversion',
    'Attach images and PDF',
    'Receipt scanning',
    'Itemization',
    'Charts and graphs',
    'Expense search',
    'Save default splits',
    'Plus more goodies to come'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 19,
          ),
        ),
        title: const Text(
          "Splitwise Pro",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.1),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff7A44B4),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Upgrade to",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7D7F7C),
                    letterSpacing: 0.1),
              ),
              Row(
                children: [
                  RichText(
                    text: const TextSpan(
                        text: 'Splitwise',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 28,
                            color: Colors.black87),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Pro',
                              style: TextStyle(fontWeight: FontWeight.w300)),
                        ]),
                  ),
                  const Icon(
                    Icons.diamond,
                    color: Color(0xff7A44B4),
                    size: 35,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                itemCount: iconsList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 24,
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset(iconsList[index]),
                      ),
                      SizedBox(width: 200, child: Text(textList[index]))
                    ],
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                  child: CustomButton(
                btnName: "PKR9900 / year",
                bgColor: Color(0xff7A44B4),
              )),
              const SizedBox(
                height: 5,
              ),
              const Center(
                  child: Text(
                "Save PKR5700 / year",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff7A44B4)),
              )),
              const SizedBox(
                height: 6,
              ),
              const Center(child: Text("or")),
              const SizedBox(
                height: 4,
              ),
              const Center(
                  child: CustomButton(
                btnName: "PKR1300 / year",
                bgColor: Color(0xff7A44B4),
              )),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(1),
                          blurRadius: 0.1,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ]),
                  child: const Center(
                      child: Text(
                    "Restore purchases",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                        text: 'Recurring billing, cancel anytime.',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.black87),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  ' Your subscription will be charged to your iTunes account, and auto-renews unless disabled a day before the renewal date. You can mange your sibscription by going to iTunes Account Setting.Terms and Conditions may apply.',
                              style: TextStyle(fontWeight: FontWeight.w400)),
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
