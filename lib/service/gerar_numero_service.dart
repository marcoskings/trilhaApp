import 'dart:math';

class GeradorNumeroA{
  static gerarNumero(int numeroMaximo) {
    int  numeroGerado = Random().nextInt(numeroMaximo);
    return numeroGerado;
  }
}