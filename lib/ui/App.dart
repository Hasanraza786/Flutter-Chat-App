import 'package:chatApp/app/locator.dart';
import 'package:chatApp/app/router.gr.dart';
import 'package:chatApp/ui/AppViewModel.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_kickoff/ui/AppViewModel.dart';
// import 'package:flutter_kickoff/app/locator.dart';
// import 'package:flutter_kickoff/app/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppViewModel>.reactive(
      builder: (context, model, child) {
        return MaterialApp(
          title: 'Flutter KickOff',
          theme: model.isDarkMode ? model.darkTheme : model.lightTheme,
          initialRoute: Routes.homeView,
          onGenerateRoute: Routerr().onGenerateRoute,
          navigatorKey: locator<NavigationService>().navigatorKey,
        );
      },
      viewModelBuilder: () => AppViewModel(),
    );
  }
}
