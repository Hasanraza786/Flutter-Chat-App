// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:chatApp/services/FirebaseauthService.dart';
import 'package:chatApp/services/FirestoreService.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/Services.dart';
import '../services/ThemeService.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final services = _$Services();
  gh.lazySingleton<DialogService>(() => services.dialogService);
  gh.lazySingleton<NavigationService>(() => services.navigationService);
  gh.lazySingleton<ThemeService>(() => services.themeService);
  gh.lazySingleton<FirestoreService>(() => services.firestoreService);
  gh.lazySingleton<FirebaseauthService>(() => services.firebaseauthService);

  return get;
}

class _$Services extends Services {
  @override
  DialogService get dialogService => DialogService();
  @override
  @override
  NavigationService get navigationService => NavigationService();
  @override
  ThemeService get themeService => ThemeService();

  @override
  FirebaseauthService get firebaseauthService => throw UnimplementedError();

  @override
  FirestoreService get firestoreService => throw UnimplementedError();
}
