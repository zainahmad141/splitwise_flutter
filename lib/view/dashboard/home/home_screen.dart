import 'package:flutter/material.dart';
import 'package:splitwise_flutter/utilis/app_constants.dart';
import 'package:splitwise_flutter/utilis/color_constants.dart';
import 'package:splitwise_flutter/view/dashboard/home/preview_settings.dart';

import 'add_friends.dart';
import 'exclusive_splitwise.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              const Text('Menu', style: TextStyle(fontSize: 20, color: Colors.blue)),
              const SizedBox(height: 10),
              const Divider(
                color: Colors.grey,
                thickness: 0.2,
                height: 15,
              ),
              ListTile(
                //    leading: Icon(Icons.share),
                title: const Center(
                    child: Text('None', style: TextStyle(color: Colors.blue))),
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
                title: const Center(
                    child: Text('Groups with Outstanding balance',
                        style: TextStyle(color: Colors.blue))),
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
                //  leading: Icon(Icons.edit),
                title: const Center(
                    child: Text('Group balances you owe',
                        style: TextStyle(color: Colors.blue))),
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
                //  leading: Icon(Icons.edit),
                title: const Center(
                    child: Text('Group balances you are owed',
                        style: TextStyle(color: Colors.blue))),
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

  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    List<String> trailList = [
      'No expenses',
      'Settled up',
      'No expenses',
      'Settled up',
      'No expenses',
      'Settled up',
      'No expenses',
      'Settled up',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ExclusiveSplitwise()));
            },
            child: const Icon(Icons.search)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AddFriends(data: 'Add friends')));
                });
              },
              child: const Text(
                "Add friends",
                style: TextStyle(
                    color: Color(0xff1D856C),
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0,
                    fontSize: 14,
                    fontFamily: 'inter'),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: isPressed
            ? Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "You are all settled up!",
                        style: TextStyle(
                          color: Colors.grey.shade900,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            _showBottomSheet(context);

                            setState(() {});
                          },
                          child: const Icon(Icons.tune_outlined))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Previously settled groups.",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                        child: Text(
                          "Re-hide",
                          style: TextStyle(
                              color: ColorConstants.primary, fontSize: 15),
                        ),
                        onTap: () {
                          setState(() {
                            isPressed = false;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: AppConstants.nameList.length,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PreviewSettings(
                                        index: index,
                                      )));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: ListTile(
                            title: Text(
                              AppConstants.nameList[index],
                              style: const TextStyle(fontWeight: FontWeight.w500),
                            ),
                            trailing: Text(
                              trailList[index],
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black12, width: 1)),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    ImageConstants.imagesList[index]),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "You are all settled up!",
                        style: TextStyle(
                          color: Colors.grey.shade900,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            _showBottomSheet(context);

                            setState(() {});
                          },
                          child: const Icon(Icons.tune_outlined))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PreviewSettings(
                                      index: index,
                                    )));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: ListTile(
                          title: Text(
                            AppConstants.nameList[index],
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          trailing: Text(
                            trailList[index],
                            style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.black12, width: 1)),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  ImageConstants.imagesList[index]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Hiding friends you settled up with over 7 days ago",
                    style: TextStyle(
                        letterSpacing: 0.2,
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  InkWell(
                    child: Container(
                      width: 260,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.green,
                            width: 1,
                          )),
                      child: const Center(
                          child: Text(
                        "Show 7 settled-up friends",
                        style: TextStyle(
                            letterSpacing: 0.3,
                            fontFamily: "inter",
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Color(0xff1D856C)),
                      )),
                    ),
                    onTap: () {
                      setState(() {
                        isPressed = !isPressed;
                      });
                    },
                  ),
                ],
              ),
      ),
    );
  }
}
