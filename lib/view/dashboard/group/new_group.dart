import 'package:flutter/material.dart';
import '../../../utilis/color_constants.dart';

class NewGroup extends StatefulWidget {
  const NewGroup({super.key});

  @override
  State<NewGroup> createState() => _NewGroupState();
}

class _NewGroupState extends State<NewGroup> {
  List<String> iconList = [
    "assets/icons/plane.png",
    "assets/icons/home.png",
    "assets/icons/heart.png",
    "assets/icons/private.png",
  ] ;
  List<String> nameList = [
    "Trip",
    "Home",
    "Couple",
    "Private",
  ];
  final groupController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Create a group",
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade700),
        ),
        leading: Center(
            child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Text(
              "Cancel",
              style: TextStyle(
                color: Color(0xff1D856C),
                fontWeight: FontWeight.w500,
                letterSpacing: 0.1,
                fontSize: 16,
              ),
            ),
          ),
        )),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Padding(
              padding: EdgeInsets.only(right: 5),
              child: Text(
                "Done",
                style: TextStyle(
                  color: Color(0xff1D856C),
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.1,
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(13),
                  margin: const EdgeInsets.only(left: 20, top: 4),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade50,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Image.asset(
                    "assets/icons/addphoto.png",
                    color: Colors.black54,
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
                      "Group name",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade700),
                    ),
                    SizedBox(
                      width: 300,
                      height: 36,
                      child: TextFormField(
                        cursorHeight: 18,
                        obscureText: false,
                        enabled: true,
                        controller: groupController,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Type",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.secondary,
                ),
              ),
            ),
            SizedBox(
              height:38,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 15),
                  itemCount: nameList.length,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: const EdgeInsets.only(right: 8),
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey.shade300, width: 1.5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 25,
                                child: Image.asset(iconList[index].toString(), color: Colors.grey.shade700,)),
                            const SizedBox(width: 4,),
                            Text(nameList[index] , style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey.shade700
                            ),)
                          ],
                        )
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
