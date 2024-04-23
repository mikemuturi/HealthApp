import 'package:flutter/material.dart';
import 'package:mediaquirks/screens/dashboard.dart';
import 'package:mediaquirks/screens/login.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: const Text("One Time Password",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        icon: const Icon(Icons.navigate_before, size: 28, color: Colors.white,)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Enter the OTP sent to your mobile number',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < 4; i++)
                    SizedBox(
                      width: 50.0,
                      child: TextField(
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        autofocus: i == 0 ? true : false,
                        focusNode: _focusNodes[i],
                        onChanged: (value) {
                          if (value.length == 1 && i < 3) {
                            _focusNodes[i].unfocus();
                            FocusScope.of(context).requestFocus(_focusNodes[i + 1]);
                          }
                        },
                        controller: i == 0 ? _controller : null,
                        decoration: InputDecoration(
                          counter: Offstage(),
                          contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,// Background color
                 // Text color
                shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Button padding
                minimumSize: const Size(100, 50),
              ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) =>  const DashBoard(),
                  ));
                },
                child: const Text('Verify OTP', style: TextStyle(color: Colors.white),),

              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(" Didn't Recieve OTP?"),
                    TextButton(onPressed: (){},
                    child: const Text("Resend", style: TextStyle(color: Colors.black),)),
                      ],
                )
            ],
          ),
        ),
      ),
    );
  }
}

