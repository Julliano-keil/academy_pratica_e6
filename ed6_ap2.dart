void main() {
  try {
    converterParaPar(8);
    print('o numero é par ');
  } on Exception catch (e) {
    print(e);
  }
}

void converterParaPar(int numero) {
  if (numero.isOdd) {
    throw Exception('o numero nao é par , insira um numero correspondente ');
  }
}
