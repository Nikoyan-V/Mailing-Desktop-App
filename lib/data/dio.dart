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
            HttpHeaders.authorizationHeader, () => 'bearer token  eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbiIsImF1dGgiOiJST0xFX0FETUlOLFJPTEVfVVNFUiIsImV4cCI6MTYzNjQ1ODgyNn0.9xn-HUk_BmWSPcK058vKnHovLVXHxiJ-iy0h7bYSCUVsyqnLdxRw99d0UYD1Try7ms4MTw1RB7a7ery9AQpAXw');
        return handler.next(options); //continue
      }, onResponse: (response, handler) {
        return handler.next(response); // continue
      }, onError: (error, handler) async {
        return handler.next(error); //continue
      }),
    ]);
}
