import 'package:mobx/mobx.dart';

part 'player_controller.g.dart';

class PlayerController = _PlayerBase with _$PlayerController;

abstract class _PlayerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
