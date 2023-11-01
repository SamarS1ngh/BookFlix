import 'dart:developer';

import 'package:bookflix/Utils/snackbars.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

import '../ViewModel/Providers/homeProvider.dart';

abstract class IFirebaseService {
  signup(
      {required String email,
      required String pswd,
      required BuildContext context});
  logout();
  signin(
      {required String email,
      required String pswd,
      required BuildContext context});
  resetPswd({required String email, required BuildContext context});
  googleSignIn({required BuildContext context});
}

class FirebaseAuthService implements IFirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? get user => _auth.currentUser;
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  FirebaseAuthfunction(BuildContext context) {
    final prov = Provider.of<HomeBookFetch>(context, listen: false);
    authStateChanges.listen((User? user) {
      if (user != null) {
        prov.isLogged = true;
      } else {
        prov.isLogged = false;
      }
    });
  }

  Future<void> logout() async {
    await _auth.signOut();
  }

  Future<void> signup(
      {required String email,
      required String pswd,
      required BuildContext context}) async {
    final prov = Provider.of<HomeBookFetch>(context, listen: false);
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: pswd);
      Message().message('Account created Successfully', context);
      prov.isLogged = true;

      log('signing up ${prov.isLogged}');
    } catch (e) {
      String errorMessage = 'An error occusred';
      if (e is FirebaseAuthException) {
        log('signing up error ${prov.isLogged}');
        // Check for specific Firebase authentication exceptions
        switch (e.code) {
          case 'user-not-found':
            errorMessage =
                'User with these credentials does not exist. Try signing up.';
            break;
          case 'wrong-password':
            errorMessage = 'Wrong password. Try forgot password';
            break;
          case 'user-disabled':
            errorMessage = 'The account has been disabled.';
            break;
          case 'invalid-email':
            errorMessage = 'The email address is not valid.';
            break;
          default:
            errorMessage = '${e.message}';
        }
      }
      Message().message(errorMessage, context);
    }
  }

  Future<void> signin(
      {required String email,
      required String pswd,
      required BuildContext context}) async {
    final prov = Provider.of<HomeBookFetch>(context, listen: false);
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: pswd);
      Message().message('Logged in Successfully', context);
      prov.isLogged = true;

      log('signing in ${prov.isLogged}');
    } catch (e) {
      String errorMessage = 'An error occusred';
      log('signing in error ${prov.isLogged}');
      if (e is FirebaseAuthException) {
        // Check for specific Firebase authentication exceptions
        switch (e.code) {
          case 'weak-password':
            errorMessage =
                'The password provided is too weak. It should be minimum 6 characters';
            break;
          case 'email-already-in-use':
            errorMessage = 'The account already exists for that email.';
            break;
          case 'invalid-email':
            errorMessage = 'The email address is not valid.';
            break;
          default:
            errorMessage = '${e.message}';
        }
      }
      Message().message(errorMessage, context);
    }
  }

  Future<void> resetPswd(
      {required String email, required BuildContext context}) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      Message().message('Password reset link has been sent to $email', context);
    } on FirebaseAuthException catch (e) {
      Message().message(e.message ?? '', context);
    }
  }

  Future<User?> googleSignIn({required BuildContext context}) async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final prov = Provider.of<HomeBookFetch>(context, listen: false);
    if (googleUser == null) {
      return null;
    }
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

    try {
      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      final User? user = FirebaseAuth.instance.currentUser;
      prov.isLogged = true;
      Message().message('Logged in Successfully', context);
      prov.notifyListeners();
      return user;
    } catch (e) {
      log(e.toString());
    }
  }
}
