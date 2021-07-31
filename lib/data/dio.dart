import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

import '../helpers/storage_helper.dart';

Dio initDio() {
  final options = BaseOptions(

     baseUrl: 'https://local-and-loyal.azurewebsites.net/api',
   // baseUrl: 'https://local-and-loyal.herokuapp.com/api',
  );

  return Dio(options)
    ..interceptors.addAll(<Interceptor>[
      LogInterceptor(
          requestBody: true,
          responseBody: true,
          logPrint: (data) {
            log(data.toString(), name: 'DIO');
          }),
      InterceptorsWrapper(onRequest: (options, handler) async {
        final token = await StorageHelper.getToken();
        if (token != null && token.isNotEmpty) {
          options.headers.putIfAbsent(
              HttpHeaders.authorizationHeader, () => 'Bearer $token');
        }
        return handler.next(options); //continue
      }, onResponse: (response, handler) {
        return handler.next(response); // continue
      }, onError: (error, handler) async {
        return handler.next(error); //continue
      }),
    ]);
}
