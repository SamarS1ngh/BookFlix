import 'package:firebase_auth/firebase_auth.dart';

abstract class IFirebaseService {
  signup(String email, String pswd);
  logout();
  signin(String email, String pswd);
  resetPswd(String email);
}

class FirebaseAuthService implements IFirebaseService {
  FirebaseAuth _auth;
  FirebaseAuthService(this._auth);

  Future<void> logout() async {
    await _auth.signOut();
  }

  Future<void> signup(String email, String pswd) async {}
  Future<void> signin(String email, String pswd) async {}
  Future<void> resetPswd(String email) async {}
}
