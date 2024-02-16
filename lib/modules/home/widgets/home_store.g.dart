// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStoreBase, Store {
  late final _$isOnlineAtom =
      Atom(name: '_HomeStoreBase.isOnline', context: context);

  @override
  bool get isOnline {
    _$isOnlineAtom.reportRead();
    return super.isOnline;
  }

  @override
  set isOnline(bool value) {
    _$isOnlineAtom.reportWrite(value, super.isOnline, () {
      super.isOnline = value;
    });
  }

  late final _$buscarRotasAsyncAction =
      AsyncAction('_HomeStoreBase.buscarRotas', context: context);

  @override
  Future<void> buscarRotas() {
    return _$buscarRotasAsyncAction.run(() => super.buscarRotas());
  }

  @override
  String toString() {
    return '''
isOnline: ${isOnline}
    ''';
  }
}
