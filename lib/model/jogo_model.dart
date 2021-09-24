import 'package:get/get.dart';

class Jogo extends GetxController {
  List linha1 = ['', '', ''].obs;
  List linha2 = ['', '', ''].obs;
  List linha3 = ['', '', ''].obs;
  bool vezDeJogar = true;

  reestartGame() {
    linha1 = ['', '', ''];
    linha2 = ['', '', ''];
    linha3 = ['', '', ''];
  }

  tap(int campo) {
    vezDeJogar = !vezDeJogar;
    switch (campo) {
      case 1:
        linha1[0] = vezDeJogar ? 'X' : 'O';
        break;
      case 2:
        linha1[1] = vezDeJogar ? 'X' : 'O';
        break;
      case 3:
        linha1[2] = vezDeJogar ? 'X' : 'O';
        break;
      case 4:
        linha2[0] = vezDeJogar ? 'X' : 'O';
        break;
      case 5:
        linha2[1] = vezDeJogar ? 'X' : 'O';
        break;
      case 6:
        linha2[2] = vezDeJogar ? 'X' : 'O';
        break;
      case 7:
        linha3[0] = vezDeJogar ? 'X' : 'O';
        break;
      case 8:
        linha3[1] = vezDeJogar ? 'X' : 'O';
        break;
      case 9:
        linha3[2] = vezDeJogar ? 'X' : 'O';
        break;
    }
  }
}
