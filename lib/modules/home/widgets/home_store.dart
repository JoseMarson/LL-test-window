import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store, ChangeNotifier {
  @observable
  bool isOnline = false;

  @action
  Future<void> buscarRotas() async {
    isOnline = true;
    notifyListeners();
  }
}
