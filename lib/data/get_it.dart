import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mailing_desktop/data/repository/dashboard_repository.dart';
import 'package:mailing_desktop/store/dashboard/dashboard_state.dart';

import '../data/dio.dart';


void registerGetIt() {

  GetIt.I.registerLazySingleton<Dio>(initDio);

  GetIt.I.registerSingleton(DashboardState());
  GetIt.I.registerSingleton(DashboardRepository());
}

void resetGetIt() {
  GetIt.I.reset();
}
