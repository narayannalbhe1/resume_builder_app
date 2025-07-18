import 'package:flutter/material.dart';

class HomePageViewModel with ChangeNotifier {
  void navigateToProfileEditScreen(BuildContext context) {
    Navigator.pushNamed(context, '/profile-edit');
  }
}
