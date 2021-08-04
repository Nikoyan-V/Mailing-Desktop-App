import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';


class LoginRepository {
   final dio = GetIt.I<Dio>();
  //https://desktop-mail.herokuapp.com/api/email/inbox
  // Future<LoginResponseModel> login(String email, String password) async {
  //   final res = await dio.post('/mobile/login', data: {
  //     'email': email,
  //     'password': password,
  //   });
  //   return LoginResponseModel.fromJson(res.data);
  // }
 Future<void> fetchEmail() async {
   final res = await dio.get('https://desktop-mail.herokuapp.com/api/email/inbox');
   print('aaaaaaaaaa ${res.data}');
 }
}
