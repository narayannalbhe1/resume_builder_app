import 'package:flutter/material.dart';

class AchievementScreen extends StatefulWidget {
  const AchievementScreen({super.key});

  @override
  State<AchievementScreen> createState() => _AchievementScreenState();
}

class _AchievementScreenState extends State<AchievementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.white,),
        ),
        title: Text("Achievement",style: TextStyle(
            color: Colors.white
        ),
        ),centerTitle: true,
        automaticallyImplyLeading: false,
      ),

      body: Column(
        children: [
        ],
      ),
    );
  }
}
