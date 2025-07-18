import 'package:flutter/material.dart';
import 'package:resume_builder_app/src/view/MyHomePage/view/HomePage.dart';
import 'package:resume_builder_app/src/view/MyProfile/view/ProfileEditScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/profile-edit': (context) => ProfileEditScreen(),
      },
    );
  }
}
