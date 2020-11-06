// import 'package:chatApp/ui/widgets/smart_widgets/theme_switcher/ThemeSwitcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:chatApp/ui/views/home/HomeViewModel.Dart';

class HomeView extends StatelessWidget {
  TextEditingController _usernamecontroller = TextEditingController();

  TextEditingController _emailcontroller = TextEditingController();

  TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/abc.jpg',
                height: 300,
                width: 300,
              ),
              Card(
                child: TextField(
                  controller: _usernamecontroller,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      prefixIcon: Icon(Icons.supervised_user_circle_sharp)),
                ),
              ),
              Card(
                child: TextField(
                  controller: _emailcontroller,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      prefixIcon: Icon(Icons.email)),
                ),
              ),
              Card(
                child: TextField(
                    controller: _passwordcontroller,
                    // onEditingComplete: () => model.signup(
                    //     _usernamecontroller.text,
                    //     _emailcontroller.text,
                    //     _passwordcontroller.text),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      prefixIcon: Icon(Icons.vpn_key),
                      // suffixIcon: IconButton(
                      //   onPressed: () => model.togglepassword(),
                      //   icon: Icon(model.hidepassword
                      //       ? Icons.enhanced_encryption
                      //       : Icons.remove_red_eye),
                    )),
              ),
              RaisedButton(
                onPressed: () => null,
                // model.signup(_usernamecontroller.text,
                //     _emailcontroller.text, _passwordcontroller.text),
                child: Text('SignUp'),
              )
            ],
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
