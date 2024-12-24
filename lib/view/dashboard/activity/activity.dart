import 'package:flutter/material.dart';
import '../../../utilis/color_constants.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  List<String> namingList = [
    "You paid Alish",
    "You paid Zain",
    "You paid Maryam",
    "You paid Zarish",
    "You owe Adeel",
    "You owe Bilal",
    "You owe farhan",
    "You paid Basit",
    "You paid Ahmad",
    "You owe Abdullah",
  ] ;
  List<String> subtitleList = [
    "You paid Rs750000000.00",
    "You paid Rs4670.00",
    "You owe Rs8960.00",
    "You owe Rs24440.00",
    "You paid Rs7660.00",
    "You owe Rs256.00",
    "You paid Rs852.00",
    "You paid Rs875265.00",
    "You owe Rs52888.00",
    "You owe Rs865542585.00",
  ];
  List<String> trailingList = [
    "21-Nov-2024 at 04:48 PM",
    "22-Nov-2024 at 07:45 PM",
    "23-Nov-2024 at 05:22 PM",
    "24-Nov-2024 at 11:08 PM",
    "25-Nov-2024 at 03:15 PM",
    "26-Nov-2024 at 08:58 PM",
    "27-Nov-2024 at 1:34 PM",
    "28-Nov-2024 at 6:08 PM",
    "29-Nov-2024 at 12:01 PM",
    "30-Nov-2024 at 05:43 PM",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.search_outlined),
        title: Text(
          "Recent activity",
          style: TextStyle(
              fontSize: 17,
              letterSpacing: 0.1,
              fontWeight: FontWeight.w500,
              color: ColorConstants.secondary),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(

          itemCount: namingList.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 0.1)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: CircleAvatar(
                      radius: 23,
                      backgroundImage:
                          const AssetImage("assets/icons/dollar.png"),
                      backgroundColor: Colors.white,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    12), // Match the border radius
                                child: Image.asset(
                                  "assets/images/kkkkkk.jpg",
                                  height: 20,
                                  width: 20,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 90,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                            height: 15,
                          ),
                           Text(
                            namingList[index],
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            subtitleList[index],
                            style: TextStyle(
                                fontSize: 15, color: ColorConstants.primary),
                          ),
                           Text(
                            trailingList[index],
                            style: const TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
