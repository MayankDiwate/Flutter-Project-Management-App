// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class GoogleSignIn extends ChangeNotifier {
//   final googleSignIn = GoogleSignIn();

//   GoogleSignInAccount? _user;

//   GoogleSignInAccount? get user => _user;

//   Future googleLogin() async {
//     final googleUser = await googleSignIn.signIn();
//     if (googleSignIn == null) return;
//     _user = googleUser;

//     final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );

//     await FirebaseAuth.instance.signInWithCredential(credential);

//     notifyListeners();
//   }
// }
