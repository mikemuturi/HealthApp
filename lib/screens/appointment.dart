import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mediaquirks/pages/home_page.dart';

class AppointMentScreen extends StatelessWidget {
  const AppointMentScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(onPressed: () {
            Navigator.push(context,
             MaterialPageRoute(builder: (context) => HomePage()));
          },
           icon: const Icon(Icons.navigate_before, color: Colors.white,)),
          title: const Text('Appointments'),
          centerTitle: true,
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: const Card(
                elevation: 5,
                color: Color(0xFF90B4CE),

                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 34,
                      backgroundImage: AssetImage("lib/assets/img/nurse.png"),
                    ),
                    SizedBox(width: 20),
                    SizedBox(
                      height: 70,
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Card(
                              color: Colors.white,
                              elevation: 2,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("Dr Mike, MD"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Dermato-Endocrinology"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(color: Colors.blue,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // Background color
                          // Text color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6), // Rounded corners
                          ),
                          minimumSize: const Size(10, 5),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Wed 24,2024",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      // SizedBox(height: 10,),
                      Text(
                        "10: 30",
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.blue, size: 25),
                      Icon(Icons.cancel_rounded, color: Colors.blue, size: 25)
                    ],
                  ),
                ],
              ),
            ),
            Divider(color: Colors.blue),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hospital Name",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        "Coptic Hospital",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Full Name",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        "Mike Muturi",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Age",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        "25",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Gender",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        "Male",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                  Divider(color: Colors.blue,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Problem",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, \n"
                                  "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n"
                                  "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
