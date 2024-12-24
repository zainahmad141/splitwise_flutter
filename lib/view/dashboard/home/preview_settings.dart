
import 'package:flutter/material.dart';
import 'package:splitwise_flutter/utilis/app_constants.dart';
import 'package:splitwise_flutter/utilis/color_constants.dart';
import 'package:splitwise_flutter/view/dashboard/home/friends_profile.dart';

class PreviewSettings extends StatefulWidget {
  const PreviewSettings({super.key, required this.index});
  final int index;
  @override
  State<PreviewSettings> createState() => _PreviewSettingsState();
}

class _PreviewSettingsState extends State<PreviewSettings> {
  List<String?> iconList2 = [
    null,
    null,
    "assets/icons/diamond.png",
    "assets/icons/diamond.png",
  ];
  List<String> nameList2 = [
    "Settle up",
    "Remind..",
    "charts",
    "Connect",
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: ColorConstants.primary,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
          ),
        ),
        actions: [
          InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FriendsProfile()));
                });
              },
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
                children:[
                  Container(
                    height: screenHeight * 0.045,
                    width: screenWidth * 100,
                    color: ColorConstants.primary,
                  )
                  ,
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: CircleAvatar(
                      radius: 32,
                      backgroundImage: NetworkImage(ImageConstants.imagesList[widget.index]),
                    ),
                  ),
                ]
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    AppConstants.nameList[widget.index],
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade700),
                  ),
                  Text(
                    "You are settled up.",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 38,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 15),
                  itemCount: nameList2.length,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: const EdgeInsets.only(right: 8),
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                              color: Colors.grey.shade300, width: 1.5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            if (iconList2[index] != null)
                              SizedBox(
                                  height: 25,
                                  child: Image.asset(
                                    iconList2[index].toString(),
                                    color: Colors.grey.shade700,
                                  )),
                            Text(
                              nameList2[index],
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey.shade700),
                            )
                          ],
                        ));
                  }),
            ),
            const SizedBox(
              height: 150,
            ),
            Center(
                child: Text(
              "You are all settled up",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade800),
            )),
            Center(
                child: Text(
              "Tap to show settled expenses",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade800),
            )),
            Center(child: SizedBox(
                height: 150,
                width: 150,
                child: Image.asset("assets/images/tickmark.jpeg",)))
          ],
        ),
      ),
    );
  }
}
