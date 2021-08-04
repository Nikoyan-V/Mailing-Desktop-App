import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../data/dio.dart';


void registerGetIt() {


  GetIt.I.registerLazySingleton<Dio>(initDio);

}

void resetGetIt() {
  GetIt.I.reset();
}
