import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: Container(
              height: 100,
              width: 100,
              child: Image.asset("lib/assets/img/logo-2.png")),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("")
            ],
          )
          ,
        ],
      ),
    );
  }
}