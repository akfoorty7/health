
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:health_app/main.dart';

class AuthService with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Sign up with email and Password

  Future signUp(String email, String password) async{
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return "Success";//success message
    }catch(e){
      return e.toString();// error message
    }

  }

  Future signIn(String email, String password) async {
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return "Success";
    }catch(e){
      return e.toString();
    }
  }
  Future signOut() async {
    await _auth.signOut();
  }

}