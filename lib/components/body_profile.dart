import 'package:cropdoc_app/model/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {

  final user = FirebaseAuth.instance.currentUser!;

  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          //ProfilePic(),
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(user.photoURL!),
          ),
          SizedBox(height: 30),
          Text(
            user.displayName!,
            style: TextStyle(color: createMaterialColor(Color(0xFF36454F)), fontSize:25, fontFamily: 'Klasik'),
          ),
          SizedBox(height: 16),
          Text(
            user.email!,
            style: TextStyle(color: createMaterialColor(Color(0xFF36454F)), fontSize:12, fontFamily: 'Klasik' ),
          ),
          SizedBox(height: 50),
          ProfileMenu(
            text: "Settings",
            //icon: "assets/icons/settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            //icon: "assets/icons/logout.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            //icon: "assets/icons/logout.svg",
            press: () {
              final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.logout();
            },
          ),
          ProfileMenu(
            text: "Exit",
            //icon: "assets/icons/exit.svg",
            press: () => {
            SystemChannels.platform.invokeMethod('SystemNavigator.pop')
            },
          ),
        ],
      ),
    );
  }

  MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    };
    return MaterialColor(color.value, swatch);
  }

}