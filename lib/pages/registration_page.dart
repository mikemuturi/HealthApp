import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mediaquirks/screens/login.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  int _activeStepIndex = 0;
  String? gender;
  bool show = false;
  FocusNode focusNode = FocusNode();

  TextEditingController fullname = TextEditingController();
  TextEditingController gendert = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController firmname = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController employees = TextEditingController();
  TextEditingController users = TextEditingController();
  TextEditingController ninea = TextEditingController();

  List<Step> stepList() => [
        Step(
          state: _activeStepIndex == 0 ? StepState.indexed : StepState.complete,
         isActive: _activeStepIndex >= 0,
          title: const Text(
            'Registration Page',
            style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          content: Center(
            child: Container(
              width: 700,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: fullname,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      suffixIcon: const Icon(Icons.person),
                      hintText: "Full Name",
                      label: const Text("Full Name"),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Text("Gender"),
                  const SizedBox(height: 15,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Radio(
                            fillColor: MaterialStateProperty.all(Color.fromARGB(255, 28, 100, 128)),
                            value: "Male",
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value.toString();
                              });
                            },
                          ),
                          Text("Male")
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            fillColor: MaterialStateProperty.all(Color.fromARGB(255, 28, 100, 128)),
                            value: "Female",
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value.toString();
                              });
                            },
                          ),
                          Text("Female")
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            fillColor: MaterialStateProperty.all(Color.fromARGB(255, 28, 100, 128)),
                            value: "others",
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value.toString();
                              });
                            },
                          ),
                          Text("Others")
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      suffixIcon: Icon(Icons.email),
                      hintText: "Email",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  IntlPhoneField(
                  focusNode: focusNode,
                  controller: phone,
                  decoration: const InputDecoration(
                    labelText: 'Phone',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  languageCode: "English",
                  onChanged: (phone) {
           
                  },
                  onCountryChanged: (country) {
                    // print('Country changed to: ' + country.name);
                  },
                ),
                  const SizedBox(height: 20,),
                  TextField(
                    obscureText: show,
                    controller: password,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    suffixIcon: IconButton(
                        icon: Icon(show ? Icons.visibility_off : Icons.visibility),
                          onPressed: () {
                          setState(() {
                      show = !show;
                          });
                    },
                    ),
                      hintText: "Enter Password",
                      label: const Text("Password"),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Step(
        state: _activeStepIndex == 1 ? StepState.indexed : StepState.complete ,
          isActive: _activeStepIndex >= 1,
          title: const Text(
            'Other Informations',
            style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          content: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 700,
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: firmname,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        // suffixIcon: const Icon(Icons.),
                        hintText: "Next of kin Name",
                        label: const Text("Next of Kin Name"),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextField(
                      controller: address,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        suffixIcon: const Icon(Icons.location_on, color: Color.fromARGB(255, 18, 100, 128),),
                        hintText: "Address",
                        label: const Text("Adress"),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextField(
                      readOnly: true,
                      cursorColor: Color.fromARGB(255, 28, 100, 128),
                      controller: date,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () async{
                            final DateTime? _date = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2050));
                            final _formatteddate = DateFormat("dd-MM-yyyy").format(_date!);
                            setState(() {
                              date.text = _formatteddate.toString();
                            });
                          },
                          icon: const Icon(Icons.calendar_month)),
                        hintText: "Date",
                        label: const Text("Date"),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextField(
                      controller: employees,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        // suffixIcon: const Icon(Icons.people),
                        hintText: "Insuarance",
                        label: const Text("Insuarance"),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextField(
                      controller: users,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        suffixIcon: const Icon(Icons.group),
                        hintText: "Hospital",
                        label: const Text("Hospital"),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    // TextField(
                    //   controller: ninea,
                    //   decoration: InputDecoration(
                    //     border: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(12),
                    //     ),
                    //     // suffixIcon: const Icon(Icons.person),
                    //     hintText: "Ninea/Ifu:",
                    //     label: const Text("Ninea/Ifu:"),
                    //     filled: true,
                    //     fillColor: Colors.white,
                    //   ),
                    // ),
                    const SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
          ),
        ),
        Step(
          state: StepState.complete,
          isActive: _activeStepIndex >= 2,
          title: const Text(
            'Confirm',
            style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          content: Center(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Full Name: ${fullname.text}', style: const TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  Text('Gender: ${gender}', style: const TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  Text('Email: ${email.text}',style: const TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  Text('Phone: ${phone.text}',style: const TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  Text('Password: ${password.text}',style: const TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  Text('Next of Kin Name: ${firmname.text}',style: const TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  Text('Adress: ${address.text}', style: const TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  Text('Date : ${date.text}',style: const TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  Text('Insuarance ${employees.text}',style: const TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  Text('Hospital ${users.text}', style: const TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  // Text('Ninea/Ifu: ${ninea.text}', style: const TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                  // const SizedBox(height: 20,),
                ],
              ),
            ),
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 28, 100, 128),
        title: const Text(
          "Sign Up",
          style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(onPressed: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        icon: Icon(Icons.navigate_before, size: 34,color: Colors.white,)),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Stepper(
          type: StepperType.vertical,
          currentStep: _activeStepIndex,
          steps: stepList(),
          onStepContinue: () {
            if (_activeStepIndex < (stepList().length - 1)) {
              setState(() {
                _activeStepIndex += 1;
              });
            } else {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => LoginScreen()));
            }
          },
          onStepCancel: () {
            if (_activeStepIndex == 0) {
              return;
            }

            setState(() {
              _activeStepIndex -= 1;
            });
          },
          onStepTapped: (int index) {
            setState(() {
              _activeStepIndex = index;
            });
          },
          controlsBuilder: (BuildContext context, ControlsDetails? details) {
            final VoidCallback? onStepContinue = details?.onStepContinue;
            final VoidCallback? onStepCancel = details?.onStepCancel;

            final isLastStep = _activeStepIndex == stepList().length - 1;

            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (_activeStepIndex > 0)
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextButton(
                        onPressed: onStepCancel != null ? onStepCancel : () {},
                        child: const Text('Back', style: TextStyle(color: Colors.white)),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(15)),
                          textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 18)),
                          shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                        ),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextButton(
                      onPressed: onStepContinue ?? () {},
                      child: Text(isLastStep ? 'Submit' : 'Next', style: const TextStyle(color: Colors.white)),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(15)),
                        textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 18)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
