import 'package:flutter/material.dart';
import 'package:resume_builder_app/src/view/Experience/view/experience_screen.dart';
import 'package:resume_builder_app/src/view/Project/view/project_screen.dart';
import 'package:resume_builder_app/src/view/achievement/view/AchievementScreen.dart';
import 'package:resume_builder_app/src/view/interest/view/interest_screen.dart';
import 'package:resume_builder_app/src/view/language/view/language_screen.dart';
import 'package:resume_builder_app/src/view/personal_info/view/personal_info_screen.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Personal Info'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PersonalInfoScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Objective'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PersonalInfoScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Education Info'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PersonalInfoScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Skills'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PersonalInfoScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Experience'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExperienceScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Project'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProjectScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Interest'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InterestScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Language'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LanguageScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Achievement'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AchievementScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
