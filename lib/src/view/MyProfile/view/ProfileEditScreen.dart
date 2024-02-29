import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/src/view/Experience/view/experience_screen.dart';
import 'package:resume_builder_app/src/view/Objective/view/ObjectiveScreen.dart';
import 'package:resume_builder_app/src/view/Project/view/project_screen.dart';
import 'package:resume_builder_app/src/view/achievement/view/AchievementScreen.dart';
import 'package:resume_builder_app/src/view/education/view/education_info_screen.dart';
import 'package:resume_builder_app/src/view/interest/view/interest_screen.dart';
import 'package:resume_builder_app/src/view/language/view/language_screen.dart';
import 'package:resume_builder_app/src/view/personal_info/view/personal_info_screen.dart';
import 'package:resume_builder_app/src/view/skills/view/skill_screen.dart';
import 'package:resume_builder_app/src/view/template/view/template_screen.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Profile',),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return TemplateScreen();
                    }));
                  }, child: Text('View',style: TextStyle(color: Colors.white),)),
            ),
          )
        ],
      ),
      body: Scrollable(
        viewportBuilder: (context, position) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Container(
                width: kIsWeb ? 600 : MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(15.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView(
                    children: [
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Personal Info'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PersonalInfoScreen()),
                            );
                          },
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Objective'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ObjectiveScreen()),
                            );
                          },
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Education Info'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => EducationInfoScreen()),
                            );
                          },
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Skills'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SkillScreen()),
                            );
                          },
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Experience'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ExperienceScreen()),
                            );
                          },
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Project'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ProjectScreen()),
                            );
                          },
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Interest'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => InterestScreen()),
                            );
                          },
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Language'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LanguageScreen()),
                            );
                          },
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Achievement'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AchievementScreen()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
