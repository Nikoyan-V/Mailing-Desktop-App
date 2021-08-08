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
        options.headers.putIfAbsent(
            HttpHeaders.authorizationHeader, () => 'Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbiIsImF1dGgiOiJST0xFX0FETUlOLFJPTEVfVVNFUiIsImV4cCI6MTYzNjczMTQwNX0.auPtkfAOKU8rD-7cBUhzI3Y5rXKVi7g_z9eoSknPJVb2oZYsAgFXiXWP77ry2Q-P9Ioqorm_vWP5Vo23PAYKmA');
        return handler.next(options); //continue
      }, onResponse: (response, handler) {
        return handler.next(response); // continue
      }, onError: (error, handler) async {
        return handler.next(error); //continue
      }),
    ]);
}
