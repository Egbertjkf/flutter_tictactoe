import 'package:jogo_da_velha/model/jogo_model.dart';

class HomeController {
  late Jogo jogoModel;
  HomeController(this.jogoModel);

  tap(campo) {
    jogoModel.tap(campo);
  }

  reestarGame() {
    return jogoModel.reestartGame();
  }
}
