import 'package:flutter/material.dart';
import 'package:mediaquirks/pages/registration_page.dart';
import 'package:mediaquirks/screens/otp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController id = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/img/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "lib/assets/img/logo-definitation.png",
                  width: 200,
                  height: 200,
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                // color: Colors.white,
              ),
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text(
                        "LOG IN",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        controller: id,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.black, // Change border color to black
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "ID number/ Birth Certificate Number ",
                        ),
                      ),
                      SizedBox(height: 10,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          minimumSize: const Size(80, 50),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const OTPScreen()));
                        },
                        child: const Text("Request OTP",style: TextStyle(fontSize: 12, color: Colors.white),),
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     const Text(" Don't have an Acccount?"),
                      //     TextButton(
                      //       onPressed: (){
                      //         Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                      //       },
                      //       child: const Text("SignUp", style: TextStyle(color: Colors.black),),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
