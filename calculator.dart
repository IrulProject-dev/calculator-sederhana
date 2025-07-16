import 'dart:io';

String? getInput(String promt) {
  print(promt);

  String? inp = stdin.readLineSync();

  if (inp == null) {
    print('Error: nama Harus di isi');
  } else {
    return inp;
  }
}

double? calculate(double num1, double num2, String oprator) {
  String? error = 'tidak valid';
  switch (oprator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 == 0) {
        stdout.write('Error: tidak bisa di bagi dengan 0');
      }
      return num1 / num2;
    default:
      stdout.write('Input Tidak valid \n');
      return null;
  }
}

void main() {
  stdout.write('<-------Calculator Sederhana-------->\n');
  stdout.write('   Silahkan Masukan Dengan Benar\n');

  String? inputOperator = getInput(
    'Operator Mana yang akan Anda Gunakan(+ , - , / ,*):',
  );

  String? inputNum1 = getInput('angka pertama:');
  double? num1inp = double.tryParse(inputNum1!);

  String? inputNum2 = getInput('angka kedua:');
  double? num2inp = double.tryParse(inputNum2!);

  double? result = calculate(num1inp!, num2inp!, inputOperator!);

  int resultInt = result!.toInt();

  stdout.writeln('hasilnya adalah: $resultInt \n');
}
