import 'package:flutter/material.dart';
import 'package:splitwise_flutter/utilis/color_constants.dart';
import 'package:splitwise_flutter/view/dashboard/group/group_screen.dart';
import 'package:splitwise_flutter/view/dashboard/home/home_screen.dart';
import 'account/account.dart';
import 'activity/activity.dart';
import 'add/add.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});
  static const route='/DashboardScreen';

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentScreenIndex=0;

  final List<Widget> _screens=[
    const HomeScreen(),
    const GroupScreen(),
    const Add(),
    const Activity(),
    const Account(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[currentScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentScreenIndex,
          onTap: (index){
            setState(() {
              currentScreenIndex=index;
            });
          },
          selectedItemColor: ColorConstants.primary,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(color: ColorConstants.primary),
          unselectedLabelStyle: const TextStyle(color: Colors.grey),
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.home, color: ColorConstants.primary, size: 30),
              icon: Icon(Icons.home, color: Colors.grey.shade600, size: 30),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.people, color: ColorConstants.primary, size: 30,),
                icon: Icon(Icons.people, color: Colors.grey.shade600, size: 30,),
                label: 'Groups',
            ),
            BottomNavigationBarItem(
                icon: Container(
                  width: 50,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: ColorConstants.primary,
                    ),

                    child: Icon(Icons.add, color: Colors.white, size: 40)),
                label: ''
            ),
            const BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/image-gallery.png")),
                label: 'Activity'
            ),
            const BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/account.png")),
                label: 'Account'
            )
      ]),
    );
  }
}
