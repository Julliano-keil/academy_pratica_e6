void main() {
  try {
    final nome = Arquivotexto().nome = 'juliano';
    print(nome);
    final arq = Arquivotexto().abrir();
    print(arq);
  } catch (e) {
    print(e);
  } finally {
    print('fimdo programa');
  }
}

abstract class Arquivo {
  abrir();
}

class Arquivotexto implements Arquivo {
  late String nome;

  @override
  abrir() {
    try {
      throw Exception('Erro ao abrir o arquivo $nome');
    } catch (e) {
      print('exeption');
      rethrow;
    }
  }
}
