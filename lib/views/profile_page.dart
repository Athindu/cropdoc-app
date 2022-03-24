import 'package:cropdoc_app/views/user_profile_page.dart';
import 'package:flutter/material.dart';
import '../components/body_profile.dart';


class ProfilePage extends StatelessWidget {
  static String routeName = "/profile";

  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: UserProfile(),
      //bottomNavigationBar: ,
    );
  }
}