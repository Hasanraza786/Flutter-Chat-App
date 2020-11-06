import 'package:chatApp/app/locator.dart';
import 'package:chatApp/ui/App.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter_kickoff/ui/App.dart';
// import 'package:flutter_kickoff/app/locator.dart';

void main() {
  setupLocator();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en', 'US')],
      path: 'assets/translations',
      fallbackLocale: Locale('en', 'US'),
      child: MyApp(),
    ),
  );
  Firebase.initializeApp();
}
