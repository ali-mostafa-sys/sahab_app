import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:sahab_appli/features/boarding/presentation/bloc/boarding_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/network/network_info.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  /// Features
  /// Boarding/////////////////////////////////////////////////////////////
  // bloc
  sl.registerFactory(() => BoardingBloc());
  // useCase
  // repository
  // dataSource

  // bloc
  // useCase
  // repository
  // dataSource

  /// core/////////////////////////////////
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  ///External//////////////////////////////////////////////////////////////////////
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
