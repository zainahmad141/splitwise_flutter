import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utilis/color_constants.dart';

class FriendsProfile extends StatefulWidget {
  const FriendsProfile({super.key});

  @override
  State<FriendsProfile> createState() => _FriendsProfileState();
}

class _FriendsProfileState extends State<FriendsProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Friend settings",
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
            child: SizedBox(
                height: 30,
                width: 30,
                child: Image.asset("assets/icons/cancel2.png")),
          ),
        )),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundImage: AssetImage("assets/images/kkkkkk.jpg"),
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
                      Text(
                        "zainj480@gmail.com",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            letterSpacing: 0),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Manage relationship",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade700),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Remove from friends lists",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade700),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.4,
              height: 25,
            ),
            Text(
              "Block user",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade700),
            ),
            Text(
              "Remove this user from your friends list, hide any groups you share, and suppress future expenses/notifications from them. ",
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade500),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.4,
              height: 25,
            ),
            Text(
              "Report user",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade700),
            ),
            Text(
              "Flag an abusive, suspicious or spam account. ",
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade500),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.4,
              height: 25,
            ),
            Text(
              "Shared groups",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade700),
            ),
            SizedBox(
              height: 8,
            ),
            ListTile(
              title: Text(
                "Eggs",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.grey.shade400,
                size: 16,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 0.1),
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
          ],
        ),
      ),
    );
  }
}
