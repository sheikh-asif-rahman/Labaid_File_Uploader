import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:new_project_labaid/screens/dashboard.dart';
import 'package:new_project_labaid/screens/documents.dart';
import 'package:new_project_labaid/screens/profile.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  BottomNavBarState createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  final pages = [
    const Documents(),
    const Dashboard(),
    Profile(),
  ];

  int currentIndex = 1;

  @override
  // Logout() {
  //   // auth.signOut();
  //   // Navigator.pushReplacement(context, MaterialPageRoute(
  //   //     builder: (context)=> SplashScreen()
  //   // ));
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          elevation: 0,
          title: const Text("LABAID",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 45)),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        bottomNavigationBar: ConvexAppBar(
          style: TabStyle.reactCircle,
          color: Colors.white,
          backgroundColor: Colors.blueAccent,
          activeColor: Colors.white,

          initialActiveIndex: currentIndex,
          // selectedItemColor: Colors.orange,
          // unselectedItemColor: Colors.white,
          // selectedLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),

          items: const [
            TabItem(icon: Icon(Icons.dashboard_customize), title: "Documents"),
            TabItem(icon: Icon(Icons.home), title: "Dashboard"),
            TabItem(icon: Icon(Icons.person), title: "Profile"),
          ],

          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: pages[currentIndex],
      ),
    );
  }
}
