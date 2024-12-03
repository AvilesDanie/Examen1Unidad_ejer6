


class CalculoController {

  String rango(int num1, int num2) {


    String result = '';

    if (num1 > num2) {
      for (int i = num1; i >= num2; i--) {
        result += '$i ';
      }
    }
    else if (num2 > num1) {
      for (int i = num1; i <= num2; i++) {
        result += '$i ';
      }
    }
    else {
      result = 'Ambos números son iguales.';
    }

    return result;
  }
}
