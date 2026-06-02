import 'package:flutter/material.dart';
import 'package:quiz/widgets/resultado.dart';
import 'package:quiz/widgets/pergunta.dart';
import 'package:quiz/dados/lista_de_dados.dart';

class HomeState extends State<StatefulWidget> {
  int indice = 0;
  int totalPontos = 0;
  final List listaDados = dados;
  List listaRespostas = [];

  @override
  void initState() {
    super.initState();
    listaDados.shuffle();
  }

  void responder(String txt, int pontos) {
    setState(() {
      listaRespostas.add({
        'pergunta':dados[indice].pergunta, 
        'resposta':txt,
        'pontos':pontos
      });
      totalPontos += pontos;
      indice++;
    });
  }

  void reiniciar(){
    setState(() {
      indice = 0;
      totalPontos = 0;
      listaRespostas = [];
      listaDados.shuffle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        toolbarHeight: 100,
        title: Text("Meu Quiz", style: TextStyle(fontSize: 40, fontWeight: .bold),),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          indice < dados.length
          ? Pergunta(
              txt: listaDados[indice].pergunta,
              img: listaDados[indice].imagem,
              respostas: listaDados[indice].respostas,
              funcaoResponder:  responder,
            )
          : Resultado(
              reiniciar: reiniciar, 
              respostas: listaRespostas,
              totalPontos: totalPontos,
            )
          ,
          Text("Indice: $indice, Pontos: $totalPontos"),
        ],
      ),
    );
  }
}
