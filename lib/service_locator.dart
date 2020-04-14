import 'package:get_it/get_it.dart';
import 'package:simple_app/services/auth_service.dart';

import 'models/app_state.dart';

GetIt locator = GetIt();

void setupLocator () {
  // Register services
  locator.registerLazySingleton<AuthService>(() => AuthService());

  // Register models
  locator.registerFactory<AppState>(() => AppState());
}