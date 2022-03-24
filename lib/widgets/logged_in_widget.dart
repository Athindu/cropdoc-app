import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoggedInWidget extends StatelessWidget {
  const LoggedInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:60,),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(user.photoURL!),
            ),
            SizedBox(height:30,),
            RichText(text: TextSpan(
                text:"Don\'t have an account?",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 15,
                ),
            ),
            ),
            SizedBox(height:12,),
            Row(
                children: <Widget>[
                  Expanded(
                    child: new Container(
                      margin: const EdgeInsets.only(left: 40, right: 15),
                      child: Divider(
                        height:40,
                        thickness:2,
                        color: Colors.blueGrey[100],
                        // indent: 60,
                        // endIndent: 200,
                      ),
                    ),
                  ),
                  Text("OR"),
                  Expanded(
                    child: new Container(
                      margin: const EdgeInsets.only(left: 15, right: 40),
                      child: Divider(
                        height:40,
                        thickness:2,
                        color: Colors.blueGrey[100],
                        // indent: 60,
                        // endIndent: 200,
                      ),
                    ),
                  ),
                ]
            ),
            RichText(text: TextSpan(
                text:"Login with",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 15,
                )
            ),),

          ],
        ),
      ),
    );
  }
}

