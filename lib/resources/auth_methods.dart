import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationManager {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> signUp({
    required String email,
    required String password,
  }) async {
    String message = "Error";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        print(credential.user!.email);
        message = "success";
      }
    } on FirebaseAuthException catch (err) {
      if (err.code == 'invalid-email') {
        message = 'The email is badly formatted';
      } else if (err.code == 'weak-password') {
        message = 'The password is weak';
      }
    } catch (e) {
      message = e.toString();
    }

    return message;
  }

  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String message = "Error";

    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);

        //print(credential.user!.email);
        message = "success";
      } else {
        message = "Enter all the fields";
      }
    } catch (e) {
      message = e.toString();
    }

    return message;
  }
}
