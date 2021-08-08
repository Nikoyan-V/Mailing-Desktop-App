import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mailing_desktop/model/email/email_model.dart';

class DashboardRepository {
  final dio = GetIt.I<Dio>();

  Future<List<EmailModel>> fetchEmail(String label) async {
    try {
      final res = await dio.get('email/inbox?label=$label');
      print('log ${res.data}');
      final emailList = res.data
          .map((i) => EmailModel.fromJson(i))
          .toList()
          .cast<EmailModel>();
      return emailList;
    } on DioError catch (e) {
      return Future.error(e.response!.data['message']);
    }
  }

  Future<void> sendEmail(String to, String from, String plainText, String label,
      String subject) async {
    try {
      final res = await dio.post('email/messages', data: {
        'to': to,
        'from': from,
        'label': label,
        'plainText': plainText,
        'subject': subject,
      });
      print('log ${res.data}');

    } on DioError catch (e) {
      return Future.error(e.response!.data['message']);
    }
  }
}
