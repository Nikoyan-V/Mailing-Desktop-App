// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'email_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailModel _$EmailModelFromJson(Map<String, dynamic> json) {
  return _EmailModel.fromJson(json);
}

/// @nodoc
class _$EmailModelTearOff {
  const _$EmailModelTearOff();

  _EmailModel call(
      {String? id,
      String? subject,
      int? date,
      String? from,
      String? to,
      String? snippet}) {
    return _EmailModel(
      id: id,
      subject: subject,
      date: date,
      from: from,
      to: to,
      snippet: snippet,
    );
  }

  EmailModel fromJson(Map<String, Object> json) {
    return EmailModel.fromJson(json);
  }
}

/// @nodoc
const $EmailModel = _$EmailModelTearOff();

/// @nodoc
mixin _$EmailModel {
  String? get id => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;
  int? get date => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;
  String? get snippet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailModelCopyWith<EmailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailModelCopyWith<$Res> {
  factory $EmailModelCopyWith(
          EmailModel value, $Res Function(EmailModel) then) =
      _$EmailModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? subject,
      int? date,
      String? from,
      String? to,
      String? snippet});
}

/// @nodoc
class _$EmailModelCopyWithImpl<$Res> implements $EmailModelCopyWith<$Res> {
  _$EmailModelCopyWithImpl(this._value, this._then);

  final EmailModel _value;
  // ignore: unused_field
  final $Res Function(EmailModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? subject = freezed,
    Object? date = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? snippet = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      snippet: snippet == freezed
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EmailModelCopyWith<$Res> implements $EmailModelCopyWith<$Res> {
  factory _$EmailModelCopyWith(
          _EmailModel value, $Res Function(_EmailModel) then) =
      __$EmailModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? subject,
      int? date,
      String? from,
      String? to,
      String? snippet});
}

/// @nodoc
class __$EmailModelCopyWithImpl<$Res> extends _$EmailModelCopyWithImpl<$Res>
    implements _$EmailModelCopyWith<$Res> {
  __$EmailModelCopyWithImpl(
      _EmailModel _value, $Res Function(_EmailModel) _then)
      : super(_value, (v) => _then(v as _EmailModel));

  @override
  _EmailModel get _value => super._value as _EmailModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? subject = freezed,
    Object? date = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? snippet = freezed,
  }) {
    return _then(_EmailModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      snippet: snippet == freezed
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmailModel implements _EmailModel {
  _$_EmailModel(
      {this.id, this.subject, this.date, this.from, this.to, this.snippet});

  factory _$_EmailModel.fromJson(Map<String, dynamic> json) =>
      _$_$_EmailModelFromJson(json);

  @override
  final String? id;
  @override
  final String? subject;
  @override
  final int? date;
  @override
  final String? from;
  @override
  final String? to;
  @override
  final String? snippet;

  @override
  String toString() {
    return 'EmailModel(id: $id, subject: $subject, date: $date, from: $from, to: $to, snippet: $snippet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.snippet, snippet) ||
                const DeepCollectionEquality().equals(other.snippet, snippet)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(snippet);

  @JsonKey(ignore: true)
  @override
  _$EmailModelCopyWith<_EmailModel> get copyWith =>
      __$EmailModelCopyWithImpl<_EmailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EmailModelToJson(this);
  }
}

abstract class _EmailModel implements EmailModel {
  factory _EmailModel(
      {String? id,
      String? subject,
      int? date,
      String? from,
      String? to,
      String? snippet}) = _$_EmailModel;

  factory _EmailModel.fromJson(Map<String, dynamic> json) =
      _$_EmailModel.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get subject => throw _privateConstructorUsedError;
  @override
  int? get date => throw _privateConstructorUsedError;
  @override
  String? get from => throw _privateConstructorUsedError;
  @override
  String? get to => throw _privateConstructorUsedError;
  @override
  String? get snippet => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmailModelCopyWith<_EmailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
