import 'package:flutter/material.dart';

class Pergunta {
  String enunciado;
  TipoPergunta tipo;
  //int id;
  List pesos;
  String dominio;
  int resposta = 0; //tirar esse zero, foi so pra testar sem ter que apretar todos os itens
  String respostaExtenso;

  Pergunta(
    this.enunciado,
    this.tipo,
    //this.id,
    this.pesos,
    this.dominio,
  );

  void setRespostaExtenso(String respostaExtenso){
    this.respostaExtenso = respostaExtenso; 
  }

  void setResposta(int resposta) {
    this.resposta = resposta;
  }
}

class Resultado {
  List<Pergunta> perguntas;

  Resultado(this.perguntas);
  // Resultado(List<Pergunta> perguntas) {
  //    this.perguntas = perguntas;
  // }
  gerarFormulario() {
    //
    List<dynamic> listaRespostas = new List();
    var index;
    for (int i = 0; i < perguntas.length; i++) {
      // index = perguntas[i].resposta;
      print(perguntas[i].pesos[5]);
      // listaRespostas.add(perguntas[i].pesos[index]);

    }
    return listaRespostas;
  }

  gerarRespostasManualmente() {}

  static List<String> gerarPerguntasEscrever( List<Pergunta> perguntasEscrever ){
      List<String> perguntas = [];
      for(var p in perguntasEscrever){
        if(
            p.enunciado.contains('Nome do entrevistado') || 
            p.enunciado.contains('Número da Avaliação') || 
            p.enunciado.contains('Anote o sexo da pessoa conforme observado') || 
            p.enunciado.contains('Qual a sua idade?'))
        {
          perguntas.add(p.respostaExtenso);
          print(p.respostaExtenso);
        }
      }
      return perguntas;
  }

  static int gerarDo1(List<Pergunta> d1Perguntas) {
    // Mesma função para todos os domínios
    var soma = 0;
    for (var item in d1Perguntas) {
      int index = item.resposta;
      print(index);
      print(item.pesos);
      soma = soma + item.pesos[index];
    }
    return soma * 5;
  }

  static double gerarDo2(List<Pergunta> d2Perguntas) {
    var soma = 0;
    for (var item in d2Perguntas) {
      int index = item.resposta;
      print(index);
      print(item.pesos);
      soma = soma + item.pesos[index];
    }

    return soma * (100 / 16);
  }

  static int gerarDo3(List<Pergunta> d3Perguntas) {
    // Mesma função para todos os domínios
    var soma = 0;
    for (var item in d3Perguntas) {
      int index = item.resposta;
      print(index);
      print(item.pesos);
      soma = soma + item.pesos[index];
    }

    return soma * 10;
  }

  static double gerarDo4(List<Pergunta> d4Perguntas) {
    // Mesma função para todos os domínios
    var soma = 0;
    for (var item in d4Perguntas) {
      int index = item.resposta;
      print(index);
      print(item.pesos);
      soma = soma + item.pesos[index];
    }

    return soma * (100 / 12);
  }

  static int gerarDo51(List<Pergunta> d51Perguntas) {
    // Mesma função para todos os domínios
    var soma = 0;
    for (var item in d51Perguntas) {
      int index = item.resposta;
      print(index);
      print(item.pesos);
      soma = soma + item.pesos[index];
    }
    // }
    print("gerarDo51 ${soma * 10}"); //+ (soma * 10).toString());
    return soma * 10;
  }

  static double gerarDo52(List<Pergunta> d52Perguntas) {
    // Mesma função para todos os domínios
    // for (int i = 0; i < perguntas.length; i++) {
    //   var index = perguntas[i].resposta;
    //   var item = perguntas[i];
    //   if (item.dominio == "d52") {
    var soma = 0;
    for (var item in d52Perguntas) {
      int index = item.resposta;
      print(index);
      print(item.pesos);
      soma = soma + item.pesos[index];
    }

    return soma * 100 / 14;
  }

  static double gerarDo6(List<Pergunta> d6Perguntas) {
  
    var soma = 0;
    for (var item in d6Perguntas) {
      int index = item.resposta;
      if (item.pesos[index] != 99) { //IF PARA IGNORAR O PESO DO ITEM NÃO SE APLICA
        print(index);
        print(item.pesos);
        soma = soma + item.pesos[index];
      }
      return soma * 100 / 24;
    }
  }

  gerarRespostaSemTrabalhoRemunerado() {
    //D58+D59+D510+D511 -> achar essas posições na lista pra colocar no if
    var soma = 0;
    for (int i = 0; i < perguntas.length; i++) {
      var index = perguntas[i].resposta;
      var item = perguntas[i];
      if (item.dominio != "") {
        soma = soma + item.pesos[index];
      }
    }
    print("gerarRespostaSemTrabalhoRemunerado" + (soma * 100 / 106).toString());
    return soma * 100 / 92;
  }

  gerarRespostaTrabalhoRemunerado() {
    var soma = 0;
    for (int i = 0; i < perguntas.length; i++) {
      var index = perguntas[i].resposta;
      var item = perguntas[i];
      if (item.dominio != "") {
        soma = soma + item.pesos[index];
      }
    }
    print("gerarRespostaTrabalhoRemunerado" + (soma * 100 / 106).toString());
    return soma * 100 / 106;
  }
}

enum TipoPergunta {
  extenso,
  marcar,
  afirmativa //0,1,2
}
