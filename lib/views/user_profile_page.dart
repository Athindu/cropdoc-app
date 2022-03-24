import 'package:cropdoc_app/components/body_profile.dart';
import 'package:cropdoc_app/views/home_page.dart';
import 'package:cropdoc_app/views/sign_in.dart';
import 'package:cropdoc_app/widgets/logged_in_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(

      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData){
            print("User true");
            return Body();
          } else if (snapshot.hasError){
            return Center(child: Text("Something Went Wrong"));
          } else {
            return Scaffold(
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height:20,),
                    Container(
                      margin: const EdgeInsets.only(left: 40, right: 40),
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(

                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/no_account.gif",
                            ),
                            //fit: BoxFit.cover,
                          )
                      ),
                    ),
                    SizedBox(height:60,),
                    RichText(text: TextSpan(
                        text:"Please Login / Register",
                        style: TextStyle(
                            color: createMaterialColor(Color(0xFF36454F)), fontSize:25, fontFamily: 'Klasik',
                        )
                    ),),
                    SizedBox(height:20,),
                    IconButton(onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => SignInPage()))
                    },
                      icon: Icon(Icons.arrow_circle_right, size: 50, color: createMaterialColor(Color(0xFF36454F)) ),)

                  ],
                ),
              ),
            );
          }
      }
  ),
  );

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
