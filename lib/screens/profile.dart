import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //top part design
            Container(
              height: 120,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(120)),
                color: Colors.blueGrey,
              ),
              child: Center(
                child: Column(
                  children: [
                    //inside this design container, another two container added, one is for

                    Container(
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "User Name",
                        style: TextStyle(fontSize: 26, color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "User ID",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //1st card space
            const SizedBox(
              height: 10,
            ),
            //card to be click
            GestureDetector(
              onTap: () {
                print("hi");
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightBlue,
                ),
                width: size.width * 0.9,
                height: 50,
                child: const Row(children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.engineering,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "ONE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  )
                ]),
              ),
            ),

            //2nd card space
            const SizedBox(
              height: 10,
            ),
            //card to be click
            GestureDetector(
              onTap: () {
                print("hi");
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightBlue,
                ),
                width: size.width * 0.9,
                height: 50,
                child: const Row(children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.engineering,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "TWO",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  )
                ]),
              ),
            ),
            //3rd card space
            const SizedBox(
              height: 10,
            ),
            //card to be click
            GestureDetector(
              onTap: () {
                print("hi");
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightBlue,
                ),
                width: size.width * 0.9,
                height: 50,
                child: const Row(children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.engineering,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "THREE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  )
                ]),
              ),
            ),

            //4TH card space
            const SizedBox(
              height: 10,
            ),
            //card to be click
            GestureDetector(
              onTap: () {
                print("hi");
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightBlue,
                ),
                width: size.width * 0.9,
                height: 50,
                child: const Row(children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.engineering,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "FOUR",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  )
                ]),
              ),
            ),
            //5TH card space
            const SizedBox(
              height: 10,
            ),
            //card to be click
            GestureDetector(
              onTap: () {
                print("hi");
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightBlue,
                ),
                width: size.width * 0.9,
                height: 50,
                child: const Row(children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.engineering,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "FIVE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  )
                ]),
              ),
            ),

            //LOGOUT card space
            const SizedBox(
              height: 10,
            ),
            //card to be click
            GestureDetector(
              onTap: () {
                print("hi");
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
                width: size.width * 0.9,
                height: 50,
                child: const Row(children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.logout_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "LOGOUT",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
