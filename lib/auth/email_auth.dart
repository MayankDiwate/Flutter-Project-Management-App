import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationHelper {
  final FirebaseAuth _auth;
  AuthenticationHelper(this._auth);

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  //SIGN UP METHOD
  Future<String> signUp(
      {required String email, required String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return 'User Signed Up';
    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    }
  }

  //SIGN IN METHOD
  Future<String> signIn(
      {required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return 'User Signed In';
    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    }
  }

  //SIGN OUT METHOD
  Future<String> signOut() async {
    await _auth.signOut();
    return 'User Signed Out';
  }
}
