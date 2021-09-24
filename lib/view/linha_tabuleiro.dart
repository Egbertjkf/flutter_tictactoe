import 'package:flutter/material.dart';
import 'package:jogo_da_velha/controller/controller.dart';

class LinhaTabuleiro extends StatefulWidget {
  const LinhaTabuleiro({required this.homeController, required this.linha});
  final int linha;
  final HomeController homeController;

  @override
  _LinhaTabuleiroState createState() => _LinhaTabuleiroState();
}

class _LinhaTabuleiroState extends State<LinhaTabuleiro> {
  @override
  Widget build(BuildContext context) {
    List linhaSelecionada = [];
    int defineLinha;

    if (this.widget.linha == 1) {
      linhaSelecionada = widget.homeController.jogoModel.linha1;
      defineLinha = 0;
    } else if (this.widget.linha == 2) {
      linhaSelecionada = widget.homeController.jogoModel.linha2;
      defineLinha = 3;
    } else {
      linhaSelecionada = widget.homeController.jogoModel.linha3;
      defineLinha = 6;
    }
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: InkWell(
                onTap: () {
                  linhaSelecionada[0] == ''
                      ? widget.homeController.tap(1 + defineLinha)
                      : () {};
                  setState(() {});
                },
                child: Container(
                  child: Center(
                      child: linhaSelecionada[0] == 'O'
                          ? Icon(
                              Icons.circle_outlined,
                              size: 100,
                            )
                          : Text(
                              linhaSelecionada[0],
                              style: TextStyle(fontSize: 100),
                            )),
                  color: Colors.white,
                ),
              ),
            ),
          ),
          VerticalDivider(),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: InkWell(
                onTap: () {
                  linhaSelecionada[1] == ''
                      ? widget.homeController.tap(2 + defineLinha)
                      : () {};
                  setState(() {});
                },
                child: Container(
                  child: Center(
                      child: linhaSelecionada[1] == 'O'
                          ? Icon(
                              Icons.circle_outlined,
                              size: 100,
                            )
                          : Text(
                              linhaSelecionada[1],
                              style: TextStyle(fontSize: 100),
                            )),
                  color: Colors.white,
                ),
              ),
            ),
          ),
          VerticalDivider(),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: InkWell(
                onTap: () {
                  linhaSelecionada[2] == ''
                      ? widget.homeController.tap(3 + defineLinha)
                      : () {};
                  setState(() {});
                },
                child: Container(
                  child: Center(
                      child: linhaSelecionada[2] == 'O'
                          ? Icon(
                              Icons.circle_outlined,
                              size: 100,
                            )
                          : Text(
                              linhaSelecionada[2],
                              style: TextStyle(fontSize: 100),
                            )),
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
