import 'package:chatApp/services/FirebaseauthService.dart';
import 'package:chatApp/services/FirestoreService.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

import 'ThemeService.dart';

@module
abstract class Services {
  @lazySingleton
  NavigationService get navigationService;

  @lazySingleton
  DialogService get dialogService;

  @lazySingleton
  FirebaseauthService get firebaseauthService;
  @lazySingleton
  FirestoreService get firestoreService;

  @lazySingleton
  ThemeService get themeService;
}
