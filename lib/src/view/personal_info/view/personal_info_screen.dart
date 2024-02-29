import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({super.key});

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  TextEditingController _fname = TextEditingController();
  TextEditingController _profession = TextEditingController();
  TextEditingController _gender = TextEditingController();
  TextEditingController _nationality = TextEditingController();
  TextEditingController _dob = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _email = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.white,),
        ),
        backgroundColor: Colors.deepPurple,
        title: Text("Personal Info",style: TextStyle(
          color: Colors.white
        ),),
        automaticallyImplyLeading: false,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Container(
            width: kIsWeb ? 600 : MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(15.0)
            ),
            child: Card(
              elevation: 0,
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.person_outline),
                    title: TextField(
                      keyboardType: TextInputType.text,
                      controller: _fname,
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        border: OutlineInputBorder(),
                        hintText: 'Enter your full name',
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.work_outline),
                    title: TextField(
                      keyboardType: TextInputType.text,
                      controller: _profession,
                      decoration: InputDecoration(
                        labelText: 'Profession',
                        border: OutlineInputBorder(),
                        hintText: 'Enter your profession',
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: TextField(
                      keyboardType: TextInputType.text,
                      controller: _gender,
                      decoration: InputDecoration(
                        labelText: 'Gender',
                        border: OutlineInputBorder(),
                        hintText: 'Enter your gender',
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.flag_outlined),
                    title: TextField(
                      keyboardType: TextInputType.text,
                      controller: _nationality,
                      decoration: InputDecoration(
                        labelText: 'Nationality',
                        border: OutlineInputBorder(),
                        hintText: 'Enter your nationality',
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.calendar_today_outlined),
                    title: TextField(
                      keyboardType: TextInputType.datetime,
                      controller: _dob,
                      decoration: InputDecoration(
                        labelText: 'Date of Birth',
                        border: OutlineInputBorder(),
                        hintText: 'Enter your date of birth',
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: TextField(
                      keyboardType: TextInputType.phone,
                      controller: _phone,
                      decoration: InputDecoration(
                        labelText: 'Phone',
                        border: OutlineInputBorder(),
                        hintText: 'Enter your phone number',
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.email_outlined),
                    title: TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _email,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        hintText: 'Enter your email address',
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:  10.0),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: TextButton(
                          onPressed: (){

                          },
                          child: Text('Save',style: TextStyle(
                              color: Colors.white,fontSize: 17
                          ),)),
                    ),
                  )


                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}

