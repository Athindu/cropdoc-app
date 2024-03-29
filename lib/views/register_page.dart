//import 'package:cropdoc_app/views/auth_controller.dart';
import 'package:cropdoc_app/model/google_sign_in.dart';
import 'package:cropdoc_app/resources/auth_methods.dart';
import 'package:cropdoc_app/utils/utils.dart';
import 'package:cropdoc_app/views/profile_page.dart';
import 'package:cropdoc_app/views/sign_in.dart';
import 'package:cropdoc_app/views/user_profile_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  List sIcons = ["google_icon.png", "fb_icon.png"];

  late AssetImage registerImage;


  @override
  void initState() {
    super.initState();
    registerImage = AssetImage("assets/images/register.gif");
    print('${"assets/images/register.gif"} initState');
  }

  @override
  void dispose() {
    print('${"assets/images/register.gif"} dispose');
    registerImage.evict();
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              width: w,
              height: h * 0.3,
              decoration: BoxDecoration(
                  //color: Colors.red,
                  image: DecorationImage(
                image: registerImage,
                //fit: BoxFit.cover
              )),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                      ],
                    ),
                    child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                            hintText: "  Email",
                            prefixIcon: Icon(Icons.alternate_email,
                                color: Colors.brown[300]),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                      ],
                    ),
                    child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "  Password",
                            prefixIcon:
                                Icon(Icons.key, color: Colors.brown[300]),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)))),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: signUpLoad,
              child: Container(
                width: w * 0.4,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/btn_image.png",
                        ),
                        fit: BoxFit.cover)),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Klasik',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                  text: "Already have an account?",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15,
                  ),
                  children: [
                    TextSpan(
                        text: "  Login Now",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(() => SignInPage()))
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(left: 40, right: 15),
                  child: Divider(
                    height: 40,
                    thickness: 2,
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
                    height: 40,
                    thickness: 2,
                    color: Colors.blueGrey[100],
                    // indent: 60,
                    // endIndent: 200,
                  ),
                ),
              ),
            ]),
            RichText(
              text: TextSpan(
                  text: "Register with",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15,
                  )),
            ),
            GestureDetector(
              onTap: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.googleLogin();
                Navigator.pop(context);
              },
              child: Wrap(
                children: List<Widget>.generate(2, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 22,
                      backgroundImage:
                          AssetImage("assets/images/" + sIcons[index]),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }


  void signUpLoad() async {
    String message = await AuthenticationManager().signUp(
        email: _emailController.text,
        password: _passwordController.text);
    print(message);
    if(message == 'success'){
      showSnackbar('User added', context);
      print("in IF");
    }
    else{
      showSnackbar(message, context);
    }
    Navigator.pop(context);
  }
}
