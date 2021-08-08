// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmailModel _$_$_EmailModelFromJson(Map<String, dynamic> json) {
  return _$_EmailModel(
    id: json['id'] as String?,
    subject: json['subject'] as String?,
    date: json['date'] as int?,
    from: json['from'] as String?,
    to: json['to'] as String?,
    snippet: json['snippet'] as String?,
  );
}

Map<String, dynamic> _$_$_EmailModelToJson(_$_EmailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject': instance.subject,
      'date': instance.date,
      'from': instance.from,
      'to': instance.to,
      'snippet': instance.snippet,
    };
