import 'package:chatApp/app/locator.dart';
import 'package:chatApp/models/userModel.dart';
import 'package:chatApp/services/FirestoreService.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseauthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirestoreService _firestoreService = locator<FirestoreService>();

  UserModel _currentUser;

  UserModel get currentUser => _currentUser;

  Future signUpWithEmailAndPassword(
      String username, String email, String password) async {
    var authResult = await _auth.signInWithEmailAndPassword(
        email: email, password: password);

    _currentUser =
        UserModel(id: authResult.user.uid, email: email, username: username);

    _firestoreService.createuser(_currentUser);

    return authResult.user != null;
  }
}
