import 'package:cropdoc_app/theme/app_styles.dart';
import 'package:cropdoc_app/components/body_forum.dart';
import 'package:cropdoc_app/views/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class CommunityPage extends StatefulWidget {
  CommunityPage({Key? key}) : super(key: key);

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {

  //final _user = FirebaseAuth.instance.currentUser;

  // @override
  // Widget build(BuildContext context)  {
  //   return _user == null
  //     ? Scaffold(
  //     backgroundColor: Colors.white,
  //     body: SingleChildScrollView(
  //       child: Column(
  //         children: [
  //           SizedBox(height:70,),
  //           Container(
  //             margin: const EdgeInsets.only(left: 40, right: 40),
  //             width: 300,
  //             height: 300,
  //             decoration: BoxDecoration(
  //
  //                 image: DecorationImage(
  //                   image: AssetImage(
  //                     "assets/images/no_account.gif",
  //                   ),
  //                   //fit: BoxFit.cover,
  //                 )
  //             ),
  //           ),
  //           SizedBox(height:60,),
  //           RichText(text: TextSpan(
  //               text:"Please Login / Register",
  //               style: TextStyle(
  //                 color: loginColor, fontSize:25, fontFamily: 'Klasik',
  //               )
  //           ),),
  //           SizedBox(height:20,),
  //           IconButton(onPressed: () => {
  //             Navigator.push(context, MaterialPageRoute(builder:(context) => SignInPage()))
  //           },
  //             icon: Icon(Icons.arrow_circle_right, size: 50, color: iconColor ),)
  //
  //         ],
  //       ),
  //     ),
  //   )
  //     : Scaffold(
  //     body: ForumData(),
  //   );
  // }


  @override
  Widget build(BuildContext context)  => Scaffold(

    body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
           if (snapshot.hasData){
              print("User true");
              return ForumData();
          }else if (snapshot.hasError){
              return Center(child: Text("Something Went Wrong"));
          }else {
            return Scaffold(
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height:170,),
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
                          color: loginColor, fontSize:25, fontFamily: 'Klasik',
                        )
                    ),),
                    SizedBox(height:20,),
                    IconButton(onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => SignInPage()))
                    },
                      icon: Icon(Icons.arrow_circle_right, size: 50, color: iconColor ),)

                  ],
                ),
              ),
            );
          }
        }
    ),
  );



}
