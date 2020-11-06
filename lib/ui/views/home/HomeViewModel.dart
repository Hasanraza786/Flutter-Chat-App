import 'package:chatApp/app/locator.dart';
import 'package:chatApp/services/FirebaseauthService.dart';
// import 'package:chatApp/services/Firebase';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  // final FirebaseauthService _firebaseauthService =
  //     locator<FirebaseauthService>();
  bool _hidepassword = true;

  bool get hidepassword => _hidepassword;
  void togglepassword() {
    _hidepassword = !_hidepassword;
    notifyListeners();
  }

  // Future signup(String username, String email, String password) async {
  // await _firebaseauthService.signUpWithEmailAndPassword(
  //     username, email, password);
  // }
}
