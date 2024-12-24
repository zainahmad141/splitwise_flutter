import 'package:flutter/material.dart';
import 'package:splitwise_flutter/utilis/color_constants.dart';

class AddFriends extends StatefulWidget {
  const AddFriends({super.key, required String data});

  @override
  State<AddFriends> createState() => _AddFriendsState();
}

class _AddFriendsState extends State<AddFriends> {
  List<String> namingList = [
    "Zain",
    "Irfan Bhai",
    "Fahad Bhai",
    "Ahmad Bhai",
    "Adeel Bhai",
    "Qamar Bhai",
    "Zeshan Bhai",
    "Bilal Bhai",
    "Ahmad Bhai",
    "Adeel Bhai",
  ];
  List<String> numberList = [
    "+9230901808786",
    "+9230954865546",
    "+9230956523565",
    "+9237549635325",
    "+9230901808786",
    "+9230954865546",
    "+9230956523565",
    "+9237549635325",
    "+9230956523565",
    "+9237549635325",
  ];
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Add friends",
          style: TextStyle(
              letterSpacing: 0.2,
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade700),
        ),
        leading: Center(
            child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: InkWell(
            onTap: () {
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
                "Next",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: screenWidth * 0.9,
              height: screenHeight * 0.040,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8)),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.top,
                controller: searchController,
                keyboardType: TextInputType.text,
                cursorHeight: 20,
                cursorColor: ColorConstants.primary,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  prefixIcon: Icon(Icons.search_outlined),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.2,
            height: 24,
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 6),
                child: Image.asset(
                  "assets/icons/add-friend.png",
                  height: 30,
                  width: 30,
                ),
              ),
              Text(
                "Add a new contact to Splitwise ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade700),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Group name",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade700),
            ),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: namingList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text(
                        namingList[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      subtitle: Text(
                        numberList[index],
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.circle_outlined,
                        color: Colors.grey.shade200,
                      ));
                }),
          ),
          // Column(
          //   children: [
          //     SizedBox(
          //       width: screenWidth * 100,
          //       height: screenHeight * 10,
          //       child: SingleChildScrollView(
          //         child: Column(
          //           children: [
          //             SizedBox(
          //               // height: screenHeight*100,
          //               child:
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
