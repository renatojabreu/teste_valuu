import 'package:flutter/material.dart';
import 'package:teste_valuu/screens/objetivos.dart';
import 'package:teste_valuu/screens/pontos.dart';
import 'package:teste_valuu/screens/premios.dart';

import 'screens/feed.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, primaryColor: Colors.white),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Olá, Raisa"),
              bottom: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey[400],
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.deepPurple),
                tabs: [
                  Tab(text: ("Feed")),
                  Tab(text: ("Pontos")),
                  Tab(text: ("Objetivos")),
                  Tab(text: ("Prêmios")),
                ],
              ),
            ),
            body: TabBarView(
                children: [Feed(), Pontos(), Objetivos(), Premios()])),
      ),
    );
    // return MaterialApp(
    //   title: "Lista de Pautas",
    //   theme: ThemeData(primarySwatch: Colors.blue, primaryColor: Colors.white),
    //   debugShowCheckedModeBanner: false,
    //   home: Feed(),
    // );
  }
}
