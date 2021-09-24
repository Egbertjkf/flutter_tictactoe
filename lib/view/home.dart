import 'package:flutter/material.dart';
import 'package:jogo_da_velha/controller/controller.dart';
import 'package:jogo_da_velha/model/jogo_model.dart';
import 'package:get/get.dart';

import 'linha_tabuleiro.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

Jogo jogo = Get.put(Jogo());

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final HomeController homeController = HomeController(jogo);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LinhaTabuleiro(
                        homeController: homeController,
                        linha: 1,
                      ),
                      Divider(),
                      InkWell(
                          onTap: () {
                            setState(() {});
                          },
                          child: LinhaTabuleiro(
                              homeController: homeController, linha: 2)),
                      Divider(),
                      LinhaTabuleiro(homeController: homeController, linha: 3),
                    ],
                  ),
                ),
              ),
            ),
          ),
          IconButton(
              onPressed: () {
                homeController.reestarGame();
                setState(() {});
              },
              icon: Icon(
                Icons.refresh,
                color: Colors.white,
                size: 50,
              ))
        ],
      )),
    );
  }
}
