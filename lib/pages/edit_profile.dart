import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mediaquirks/screens/account.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  File? _image;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _dobController = TextEditingController();
  TextEditingController _hospitalController = TextEditingController();
  TextEditingController _insuranceController = TextEditingController();

  Future getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Center(
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: getImage,
                    child: CircleAvatar(
                      radius: 60,
                   backgroundImage: _image != null ? FileImage(_image!) : const AssetImage('lib/assets/img/nurse.png') as ImageProvider,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: getImage,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            buildTextField("Username", _usernameController),
            buildTextField("Phone Number", _phoneNumberController),
            buildTextField("Date of Birth", _dobController),
            buildTextField("Hospital", _hospitalController),
            buildTextField("Insurance", _insuranceController),
            SizedBox(height: 20),
                      ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,// Background color
                 // Text color
                shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Button padding
                // minimumSize: const Size(50, 20),
              ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) =>   AccountScreen(),
                  ));
                },
                child: const Text('Update', style: TextStyle(color: Colors.white),),

              ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String labelText, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}

