import 'package:flutter/material.dart';
import 'package:splitwise_flutter/view/dashboard/group/new_group.dart';
import '../../../utilis/color_constants.dart';
import '../home/exclusive_splitwise.dart';

class GroupScreen extends StatefulWidget {
  const GroupScreen({super.key});

  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
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
              const SizedBox(height: 5),
              const Divider(
                color: Colors.grey,
                thickness: 0.2,
                height: 15,
              ),
              ListTile(
                //    leading: Icon(Icons.share),
                title: const Center(
                    child: Text(
                  'None',
                  style: TextStyle(color: Colors.blue),
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
                title: Center(
                  child: const Text(
                    'Groups with Outstanding balance',
                    style: TextStyle(color: Colors.blue),
                  ),
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ExclusiveSplitwise()));
              });
            },
            child: const Icon(Icons.search)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 19.0),
            child: InkWell(
              child: const Text(
                "Create group",
                style: TextStyle(
                    color: Color(0xff1D856C),
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.1,
                    fontSize: 13,
                    fontFamily: 'inter'),
              ),
              onTap: () {
                setState(
                  () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NewGroup()));
                  },
                );
              },
            ),
          ),
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
                    children: [
                      Text(
                        "You are all settled up!",
                        style: TextStyle(
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            fontFamily: 'inter'),
                      ),
                      const SizedBox(
                        width: 146,
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
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Previously settled groups.",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                        child: Container(
                          child: Text(
                            "Re-hide",
                            style: TextStyle(
                                color: ColorConstants.primary, fontSize: 15),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            isPressed = false;
                          });
                        },
                      ),
                    ],
                  ),
                  ListTile(
                    title: const Text("Eggs"),
                    trailing: const Text(
                      "No expenses",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black12, width: 1)),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/health-benefits-of-eggs-1296x728-feature.jpg?w=1155&h=1528"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Text("Khaba Global"),
                    trailing: const Text(
                      "settled up",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black12, width: 1)),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg/640px-Good_Food_Display_-_NCI_Visuals_Online.jpg"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Text("Non-group expenses"),
                    trailing: const Text(
                      "settled up",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black12, width: 1)),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://www.adirondackbank.com/assets/Blog/Nov29_Expenses.png"),
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
                    children: [
                      Text(
                        "You are all settled up!",
                        style: TextStyle(
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            fontFamily: 'inter'),
                      ),
                      const SizedBox(
                        width: 146,
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
                    height: 190,
                  ),
                  Image.asset("assets/images/mountain.jpeg"),
                  Text(
                    "Hiding groups you settled up with over 7 days ago",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    child: Container(
                      width: 260,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.green,
                            width: 1.5,
                          )),
                      child: const Center(
                          child: Text(
                        "Show 3 settled-up groups",
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
