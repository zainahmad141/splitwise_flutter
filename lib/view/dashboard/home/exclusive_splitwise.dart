import 'package:flutter/material.dart';
import 'package:splitwise_flutter/common/widget/custom_button.dart';

class ExclusiveSplitwise extends StatefulWidget {
  const ExclusiveSplitwise({super.key});

  @override
  State<ExclusiveSplitwise> createState() => _SplitwiseProState();
}

class _SplitwiseProState extends State<ExclusiveSplitwise> {
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
      backgroundColor: Color(0xff7A44B4),
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Center(
                child: Text(
              "close",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ))),
        title: Text(
          "Splitwise Pro",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.1),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff7A44C4),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Upgrade to",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    letterSpacing: 0.1),
              ),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'Splitwise',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 28,
                            color: Colors.white),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Pro',
                              style: TextStyle(fontWeight: FontWeight.w300)),
                        ]),
                  ),
                  Icon(
                    Icons.diamond,
                    color: Colors.white,
                    size: 35,
                  )
                ],
              ),
              SizedBox(
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
                        child: Image.asset(
                          iconsList[index],
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                          width: 200,
                          child: Text(
                            textList[index],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: CustomButton(
                        btnName: "Monthly          PKR1300",
                        bgColor: Color(0xff7A44C4),
                      ))),
              SizedBox(
                height: 15,
              ),
              Center(
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: CustomButton(
                        btnName: "Yearly          PKR9900",
                        bgColor: Color(0xff7A44C4),
                      ))),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(6),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(1),
                    //     blurRadius: 0.1,
                    //     offset: Offset(0, 2), // changes position of shadow
                    //   ),
                    // ]
                  ),
                  child: Center(
                      child: Text(
                    "Get Splitwise Pro",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: 'Recurring billing, cancel anytime.\n',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: Colors.white),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Terms of service ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                  color: Colors.white)),
                          TextSpan(
                              text: ' Privacy Policy',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white)),
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
