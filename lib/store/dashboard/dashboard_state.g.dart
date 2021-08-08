// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DashboardState on _DashboardState, Store {
  final _$emailsAtom = Atom(name: '_DashboardState.emails');

  @override
  ObservableList<EmailModel> get emails {
    _$emailsAtom.reportRead();
    return super.emails;
  }

  @override
  set emails(ObservableList<EmailModel> value) {
    _$emailsAtom.reportWrite(value, super.emails, () {
      super.emails = value;
    });
  }

  @override
  String toString() {
    return '''
emails: ${emails}
    ''';
  }
}
