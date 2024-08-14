import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Sign up with email and password
  Future<String> signUp(String email, String password, String fullname, String mobilenumber) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);

      // Save additional user information in Firestore
      await _firestore.collection('users').doc(userCredential.user?.uid).set({
        'fullname': fullname,
        'email': email,
        'mobilenumber': mobilenumber,
        'password': password
        // Add other fields here
      });

      notifyListeners();
      return "Success";
    } catch (e) {
      return e.toString();
    }
  }

  // Sign in with email and password
  Future<String> signIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      notifyListeners();
      return "Success";
    } catch (e) {
      return e.toString();
    }
  }

  // Sign out
  Future<void> signOut() async {
    await _auth.signOut();
    notifyListeners();
  }

  // Fetch user's fullname from Firestore
  Future<String> getFullName() async {
    try {
      User? user = _auth.currentUser;
      if (user != null) {
        DocumentSnapshot doc = await _firestore.collection('users').doc(user.uid).get();
        return doc['fullname'];
      }
      return 'User not found';
    } catch (e) {
      return e.toString();
    }
  }
  Future<Map<String, String>> getUserDetails() async {
    try {
      User? user = _auth.currentUser;
      if (user != null) {
        DocumentSnapshot doc = await _firestore.collection('users').doc(user.uid).get();
        return {
          'fullname': doc['fullname'],
          'email': doc['email'],
          'mobilenumber': doc['mobilenumber']
        };
      }
      return {};
    } catch (e) {
      return {};
    }
  }
}



