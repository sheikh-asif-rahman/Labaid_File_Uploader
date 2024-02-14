import 'package:flutter/material.dart';
import 'package:new_project_labaid/utils/bottom_navigationbar.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscText = false;
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return SafeArea(
      child: Scaffold(
        //background color of the page
        backgroundColor: Colors.indigo,
        //for screen scroll availability
        body: SingleChildScrollView(
          //column for 2 seperate section
          child: Column(
            children: [
              //middle container
              Container(
                decoration: BoxDecoration(
                  //middle container design
                  color: Color.fromARGB(221, 0, 0, 0),
                  borderRadius: BorderRadius.circular(5),
                  //design and position of shadow of middle container
                ),
                //position for middle container box.
                margin: const EdgeInsets.only(left: 20, right: 20, top: 200),
                child: Column(
                  children: [
                    //FOOD level part at top
                    Container(
                        margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Image.asset("Images/Labaid_Logo.png")),
                    //horizontal line part
                    Container(
                      height: 1,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      color: Colors.black,
                    ),
                    //please login here part
                    Container(
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: const Text(
                        "Please Login Here",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    //container for Email textbox
                    Container(
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      //decoration for border and color
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                      ),
                      alignment: Alignment.center,
                      child: TextFormField(
                        //get value to controller
                        controller: emailController,
                        cursorColor: Colors.blue,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            labelText: "User ID",
                            labelStyle: TextStyle(color: Colors.white),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none),
                      ),
                    ),
                    //container for password
                    Container(
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                      ),
                      alignment: Alignment.center,
                      child: TextFormField(
                        obscureText: !obscText,
                        controller: passwordController,
                        cursorColor: Colors.blue,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            icon: const Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            labelText: "Password",
                            labelStyle: const TextStyle(color: Colors.white),
                            //button for paswword visibility
                            suffixIcon: IconButton(
                              icon: Icon(
                                obscText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: obscText ? Colors.blue : Colors.white,
                              ),
                              //button click response
                              onPressed: () {
                                setState(() {
                                  //if the obscText is false, then it will become true,
                                  // if again pressed, then the true will become false again.
                                  obscText = !obscText;
                                });
                                FocusScope.of(context).unfocus();
                              },
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none),
                      ),
                    ),
                    //distance gap between paswwrod container and login button part
                    const SizedBox(height: 10),
                    //login button
                    Container(
                      width: 300,
                      height: 50,
                      margin: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.blue;
                              }
                              return Colors.white;
                            },
                          ),
                        ),
                        //on press response code
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => BottomNavBar(),
                            ),
                          );
                        },
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
