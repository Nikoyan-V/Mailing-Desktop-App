import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_model.freezed.dart';
part 'email_model.g.dart';

@freezed
class EmailModel with _$EmailModel {
  factory EmailModel({
     String? id,
     String? subject,
     int? date,
     String? from,
     String? to,
     String? snippet,
  }) = _EmailModel;

  factory EmailModel.fromJson(Map<String, dynamic> json) =>
      _$EmailModelFromJson(json);
}
