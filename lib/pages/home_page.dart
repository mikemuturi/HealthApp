import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mediaquirks/screens/appointment.dart';
import 'package:mediaquirks/screens/education.dart';
import 'package:mediaquirks/screens/messages.dart';
import 'package:mediaquirks/screens/my_health.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat('dd/MM/yyyy');
    final String formattedDate =
        _selectedDate != null ? formatter.format(_selectedDate!) : '';

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text("Terry"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("lib/assets/img/nurse.png"),
                    ),
                  ),
                ],
              ),
               SizedBox(height: 15,),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Container(
                height: 120,
                width: double.infinity,
                child: Card(
                  elevation: 7,
                  color:  Color(0xFF90B4CE),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          child: Image.asset('lib/assets/img/nurse.png'),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        left: 5,
                        child: Container(
                          child: const Row(
                            children: [
                              CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                              SizedBox(width: 5,),
                              Text("30 Doctors available", style: TextStyle(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        left: 10,
                        child: Container(
                          child: const Text(
                            "Get Free\nConsultations for \nNew Users", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        bottom: 20,
                        child: SizedBox(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              minimumSize: const Size(80, 50),
                            ),
                            onPressed: () {},
                            child: const Text( "Find a Doctor", style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Card(
                    elevation: 4,
                    color: Color(0xFF90B4CE),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.lightbulb_outline, size: 16, color: Colors.white,),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => Education()));
                                      },
                                      child: const Text(
                                        "Education",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.chat, size: 16, color: Colors.white,),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()));
                                      },
                                      child: const Text(
                                        "Consultation",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.calendar_today, size: 11, color: Colors.white,),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(context, MaterialPageRoute(
                                          builder: (context) => AppointMentScreen()));
                                      },
                                      child: const Text(
                                        "Appointment",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.calendar_today, size: 11, color: Colors.white,),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyHealth()));
                                      },
                                      child: const Text(
                                        "My Health",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Upcoming Appointment", style: TextStyle(
                    decoration: TextDecoration.underline
                  ),),
                  
                const SizedBox(width: 10,),
                  IconButton(onPressed: (){ }, icon: const Icon(Icons.notification_important, color: Colors.red,),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 70,
                  child: Card(
                    elevation: 7,
                    color: Color(0xFF90B4CE),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("lib/assets/img/nurse.png"),
                          ),
                        ),
                        Text(" Dr Username", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            children: [
                              IconButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(Colors.blue)
                                ),
                                onPressed: () => _selectDate(context),
                                icon: const Icon(Icons.calendar_month, color: Colors.white,),
                              ),
                              if (_selectedDate != null) Text('$formattedDate'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 70,
                  child: Card(
                    color: Color(0xFF90B4CE),
                    elevation: 7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("lib/assets/img/nurse.png"),
                          ),
                        ),
                      Text(" Dr Username", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),

                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            children: [
                              IconButton(
                                style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(Colors.blue)
                                ),
                                onPressed: () => _selectDate(context),
                                icon: const Icon(Icons.calendar_month, color: Colors.white,),
                              ),
                              if (_selectedDate != null) Text('$formattedDate'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Emergency"),
                  const Icon(Icons.emergency_sharp, color: Colors.red,),
                const SizedBox(width: 10,),
                  IconButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue),
                    ),
                    onPressed: (){
                    
                    launch('tel:0728160293');
                  }, icon: Icon(Icons.phone, color: Colors.white,))
                ],
              ),
               const Padding(
                padding: EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 70,
                  child: Card(
                    elevation: 7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // const Padding(
                        //   padding: EdgeInsets.only(left: 20),
                        //   child: CircleAvatar(
                        //     radius: 20,
                        //     backgroundImage: AssetImage("lib/assets/img/nurse.png"),
                        //   ),
                        // ),
                        // Text(" Dr Username"),
                        // Padding(
                        //   padding: const EdgeInsets.only(right: 10),
                        //   child: Column(
                        //     children: [
                        //       IconButton(
                        //         onPressed: () => _selectDate(context),
                        //         icon: const Icon(Icons.calendar_today),
                        //       ),
                        //       if (_selectedDate != null) Text('$formattedDate'),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
