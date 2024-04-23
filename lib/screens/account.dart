import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mediaquirks/pages/edit_profile.dart';
import 'package:mediaquirks/pages/home_page.dart';
import 'package:mediaquirks/screens/help.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  File? _image;

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
        backgroundColor: Colors.blue,
        title: const Text('User Profile', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: IconButton(
        onPressed: (){
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => HomePage()));
        }
        , icon: const Icon(Icons.navigate_before, color: Colors.white, size: 20,)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
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
                    bottom: -12,
                    right: -9,
                    child: IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: getImage,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
              Navigator.push(context,
              
              MaterialPageRoute(builder: (context) => UserProfilePage()));
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.payment),
              title: const Text('Payment Options'),
              onTap: () {
                // Navigate to payment options page
              },
            ),
            Divider(),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text('Privacy and Policy'),
              onTap: () {
                // Navigate to privacy and policy page
              },
            ),
           Divider(),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Navigate to settings page
              },
            ),
            Divider(),
            ListTile(
              leading: const Icon(Icons.help),
              title: Text('Help'),
              onTap: () {
                Navigator.push(context,
                 MaterialPageRoute(builder: (context) => HelpCenter()));
              },
            ),
            SizedBox(height: 30,),
            Divider(),
            const ListTile(
              leading: Icon(Icons.logout_rounded),
              title: Text('Logout'),
            
            ),
          ],
        ),
      ),
    );
  }
}
