import 'package:chatApp/app/locator.dart';
import 'package:chatApp/services/FirebaseauthService.dart';
// import 'package:chatApp/services/Firebase';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  // final FirebaseauthService _firebaseauthService =
  //     locator<FirebaseauthService>();
  bool _hidePasswordValue = true;

  bool get hidePassword => _hidePasswordValue;

  void togglePasswordValue() {
    _hidePasswordValue = !_hidePasswordValue;
    notifyListeners();
  }

  // Future signUp({String email, String password, String name}) async {
  //   // setBusy(true);
  //   final result = await _firebaseauthService.signUpWithEmail(
  //       email: email, password: password, username: name);
  // }
}
