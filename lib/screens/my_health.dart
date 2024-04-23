import 'package:flutter/material.dart';
import 'package:mediaquirks/pages/home_page.dart';

class MyHealth extends StatefulWidget {
  const MyHealth({Key? key}) : super(key: key);

  @override
  State<MyHealth> createState() => _MyHealthState();
}

class _MyHealthState extends State<MyHealth> {
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
          title: const Text('My Health'),
          centerTitle: true,
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 100,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        color: Colors.blue,
                      ),
                    ),
                    const Positioned(
                      bottom: -50.0,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/assets/img/placeholder.jpeg') as ImageProvider,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 40,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("Diana"),
                    Text("N11/12/009"),
                  ],
                )
              ],
            ),
            SizedBox(height: 15,),
            Card(
              elevation: 3,
              color: Color(0xFF90B4CE),
              child: ListTile(
                title: const Text("Allergies", style: TextStyle(color: Colors.white),),
                subtitle: Text("4 records found",style: TextStyle(color: Colors.white),),
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("lib/assets/img/nurse.png"),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.navigate_next, size: 22,color: Colors.white,),
                ),
              ),
            ),
            Card(
              elevation: 3,
              color: Color(0xFF90B4CE),
              child: ListTile(
                title: const Text("Family History", style: TextStyle(color: Colors.white),),
                subtitle: const Text("2 records found",style: TextStyle(color: Colors.white),),
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("lib/assets/img/nurse.png"),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.navigate_next,size: 22,color: Colors.white, ),
                ),
              ),
            ),
            Card(
              elevation: 3,
              color: Color(0xFF90B4CE),
              child: ListTile(
                title: const Text("Medical History", style: TextStyle(color: Colors.white),),
                subtitle: Text("3 records found", style: TextStyle(color: Colors.white),),
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("lib/assets/img/nurse.png"),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.navigate_next, size: 22, color: Colors.white,),
                ),
              ),
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                Card(
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Doctors Name", style: TextStyle(fontSize: 11, color: Colors.black, fontWeight: FontWeight.bold),),
                  )),
                 Card(
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Diagnosis", style: TextStyle(fontSize: 11, color: Colors.black, fontWeight: FontWeight.bold),),
                  )),
                  Card(
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Symptoms", style: TextStyle(fontSize: 11, color: Colors.black, fontWeight: FontWeight.bold),),
                  )),
              ],
            ),
            SizedBox(height: 20,),
                const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                Card(
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Doctors Name", style: TextStyle(fontSize: 11, color: Colors.black, fontWeight: FontWeight.bold),),
                  )),
                 Card(
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Diagnosis", style: TextStyle(fontSize: 11, color: Colors.black, fontWeight: FontWeight.bold),),
                  )),
                  Card(
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Symptoms", style: TextStyle(fontSize: 11, color: Colors.black, fontWeight: FontWeight.bold),),
                  )),
              ],
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
