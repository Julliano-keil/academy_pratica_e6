// Exemplo de uso:
void main() {
  String entrada = '1234';
  converterParaInteiro(entrada);

  String entradaInvalida = 'abc';
  converterParaInteiro(entradaInvalida);
}

void converterParaInteiro(String valor01) {
  try {
    int numero = int.parse(valor01);
    print('Número digitado: $numero');
  } catch (e) {
    print('Entrada inválida. Insira apenas números inteiros.');
  }
}
