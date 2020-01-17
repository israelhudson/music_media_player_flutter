import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = _AppBase with _$AppController;

abstract class _AppBase with Store {

  List<String> pessoas = [
    'Miguel',
    'Rafael',
    'Gustavo'
  ];

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
