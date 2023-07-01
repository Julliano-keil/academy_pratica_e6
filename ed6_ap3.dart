import 'dart:math';

void main() {
  try {
    final altura =
        double.parse((Random().nextDouble() * 99.0).toStringAsFixed(2));

    final base =
        double.parse((Random().nextDouble() * 99.0).toStringAsFixed(2));

    double area = Retangulo(altura, base).calcularArea();

    print('area do retangulo = ${area.toStringAsFixed(2)}');
  } catch (e) {
    print(e);
  }
}

abstract class Forma {
  double calcularArea();
}

class Retangulo implements Forma {
  final double altura;
  final double base;

  Retangulo(this.base, this.altura) {
    this.altura;
    this.base;
    if (altura <= 0 || base <= 0) {
      throw Exception(
          'Dimensoes invalidas, informe apenas valores positivos maiores que zero ');
    }
  }
  @override
  double calcularArea() {
    return base * altura;
  }
}
