import 'package:cropdoc_app/model/google_sign_in.dart';
import 'package:cropdoc_app/theme/app_styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatefulWidget {


  Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final user = FirebaseAuth.instance.currentUser!;

  String? photo = FirebaseAuth.instance.currentUser!.photoURL;
  String? name = FirebaseAuth.instance.currentUser!.displayName;

  @override
  void initState() {
    if(photo == null || name == null){
      photo = "https://images.unsplash.com/photo-1473081556163-2a17de81fc97?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80";
      name =" ";
    }
    // updateDisplayInfo(widget.weatherData);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          //ProfilePic(),
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(photo!),
          ),
          SizedBox(height: 30),
          Text(
            name!,
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
            press: () => showCustomSnackBar(context, 'Option is not available right now'),
          ),
          ProfileMenu(
            text: "Help Center",
            //icon: "assets/icons/logout.svg",
            press: () => showCustomSnackBar(context, 'Option is not available right now'),
          ),
          ProfileMenu(
            text: "Log Out",
            //icon: "assets/icons/logout.svg",
            // press: () {
            //   final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
            //   provider.logout();
            // },
            press: signOut,
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

  void signOut() async {
    String prov = FirebaseAuth.instance.currentUser!.providerData[0].providerId;
    print(prov);
    if(prov == "password"){
      await FirebaseAuth.instance.signOut();
    }
    else if(prov == "google.com"){
      final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
      provider.logout();
    }
    }

  void showCustomSnackBar(BuildContext context, String text) {
    final snackBar = SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.info_outline, size: 32),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xB362bf76),
      duration: Duration(seconds: 1),
      shape: StadiumBorder(),
      margin: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
      behavior: SnackBarBehavior.floating,
      elevation: 5,
    );

    Scaffold.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
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