import 'package:flutter/material.dart';

class Pergunta {
  String enunciado;
  int tipo;
  int id;
  List pesos;
  String dominio;
  dynamic resposta =  0;


  Pergunta(String enunciado, int tipo, int id, List pesos, String dominio) {
    this.enunciado = enunciado;
    this.tipo = tipo;
    this.id = id;
    this.pesos = pesos;
    this.dominio = dominio;
  }
  setResposta(dynamic resposta) {
    this.resposta=resposta;
  }
}

class Resultado {
  List<Pergunta> perguntas;

  Resultado(List<Pergunta> perguntas) {
    this.perguntas = perguntas;
  }
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

  gerarDo1() {
    // Mesma função para todos os domínios
    var soma = 0;
    for (int i = 0; i < perguntas.length; i++) {
      var index = perguntas[i].resposta;
      var item = perguntas[i];
      if (item.dominio == "d1") {
        soma = soma + item.pesos[index];
      }
    }
    return soma * 5;
  }

  gerarDo2() {
    // Mesma função para todos os domínios
    var soma = 0;
    for (int i = 0; i < perguntas.length; i++) {
       var index = perguntas[i].resposta;
      var item = perguntas[i];
      if (item.dominio == "d2") {
        soma = soma + item.pesos[index];
      }
    }
    return soma * (100/16);
  }

  gerarDo3() {
    // Mesma função para todos os domínios
    var soma = 0;
    for (int i = 0; i < perguntas.length; i++) {
       var index = perguntas[i].resposta;
      var item = perguntas[i];
      if (item.dominio == "d3") {
        soma = soma + item.pesos[index];
      }
    }
    return soma * 10;
  }

  gerarDo4() {
    // Mesma função para todos os domínios
    var soma = 0;
    for (int i = 0; i < perguntas.length; i++) {
       var index = perguntas[i].resposta;
      var item = perguntas[i];
      if (item.dominio == "d4") {
        soma = soma + item.pesos[index];
      }
    }
    return soma * (100/12);
  }

  gerarDo51() {
    // Mesma função para todos os domínios
    var soma = 0;
    for (int i = 0; i < perguntas.length; i++) {
       var index = perguntas[i].resposta;
      var item = perguntas[i];
      if (item.dominio == "d51") {
        soma = soma + item.pesos[index];
      }
    }
    print("gerarDo51" + (soma * 10).toString());
    return soma * 10;
  }

  gerarDo52() {
    // Mesma função para todos os domínios
    var soma = 0;
    for (int i = 0; i < perguntas.length; i++) {
       var index = perguntas[i].resposta;
      var item = perguntas[i];
      if (item.dominio == "d52") {
        soma = soma + item.pesos[index];
      }
    }
    return soma * 100/14;
  }

  gerarDo6() {
    // Mesma função para todos os domínios
    var soma = 0;
    for (int i = 0; i < perguntas.length; i++) {
       var index = perguntas[i].resposta;
      var item = perguntas[i];
      if (item.dominio == "d6") {
        soma = soma + item.pesos[index];
      }
    }
    return soma * 100/24;
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
