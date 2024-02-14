import 'package:flutter/material.dart';
import 'package:new_project_labaid/screens/upload_document.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              width: size.width * 0.9,
              child: const Text(
                "Welcome User!!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              width: size.width * 0.9,
              child: const Text(
                "You can upload your all documents snap by using this application. Thank you!!",
                style: TextStyle(fontSize: 22),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //problem box
                Container(
                  height: size.height * 0.2,
                  width: size.width * 0.45,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent,
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 5,
                    ),
                    Icon(
                      Icons.report_problem_outlined,
                      size: 100,
                      color: Colors.black54,
                    ),
                    Text(
                      "Problem",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ]),
                ),
                //message Box
                Container(
                  height: size.height * 0.2,
                  width: size.width * 0.45,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.greenAccent.shade400,
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 5,
                    ),
                    Icon(
                      Icons.message_outlined,
                      size: 100,
                      color: Colors.black54,
                    ),
                    Text(
                      "Message",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ]),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //problem box
                Container(
                  height: size.height * 0.2,
                  width: size.width * 0.45,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent,
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 5,
                    ),
                    Icon(
                      Icons.edit,
                      size: 100,
                      color: Colors.black54,
                    ),
                    Text(
                      "To Do",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ]),
                ),
                //Document Box
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const UploadDocument(),
                      ),
                    );
                  },
                  child: Container(
                    height: size.height * 0.2,
                    width: size.width * 0.45,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepPurpleAccent,
                    ),
                    child: Column(children: [
                      SizedBox(
                        height: 5,
                      ),
                      Icon(
                        Icons.upload_file_outlined,
                        size: 100,
                        color: Colors.black54,
                      ),
                      Text(
                        "Upload",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
