import 'package:flutter/material.dart';
import 'package:mediaquirks/pages/home_page.dart';
import 'package:mediaquirks/screens/account.dart';
import 'package:mediaquirks/screens/calendar.dart';
import 'package:mediaquirks/screens/messages.dart';
import 'package:mediaquirks/screens/otp.dart';


class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<DashBoard> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(onPressed: (){
              Navigator.push(context,
        MaterialPageRoute(builder: (context) => OTPScreen()));
        }
        , icon: Icon(Icons.navigate_before, color: Colors.white,))
      ),
      body: Stack(
        children: [
          IndexedStack(
            index: _currentIndex,
            children:  [
            const HomePage(), // Home screen
              const ChatScreen(), // Search screen
              AccountScreen(), // Notifications screen
              const Calendar(), // Profile screen
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNavigationBar(
              backgroundColor: Colors.blue,
              currentIndex: _currentIndex,
              onTap: _onTabTapped,
              selectedItemColor: Colors.black,
              items: const[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.black),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.message, color: Colors.black),
                  label: 'Messages',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.black),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month, color: Colors.black),
                  label: 'Calendar',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
