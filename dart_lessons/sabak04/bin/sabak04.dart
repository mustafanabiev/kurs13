void main() {
  koshuu();

  koshuu2(
    7,
    5,
    'Salam',
  );

  koshuu3(
    san1: 7,
    san2: 5,
    text: 'Salam',
  );

  kemituu(10, 2);

  koboituu(4, 9);

  boluu(21, 3);

  boluudonKyiynkyKaldyk(20, 5);

  boluuButunBolygynAlat(25, 5);
}

num boluuButunBolygynAlat(num san1, num san2) {
  num result = san1 ~/ san2;
  print('result: $result');
  return result;
}

num boluudonKyiynkyKaldyk(num san1, num san2) {
  num result = san1 % san2;
  print('result: $result');
  return result;
}

num boluu(num san1, num san2) {
  num result = san1 / san2;
  print('result: $result');
  return result;
}

num koboituu(num san1, num san2) {
  num result = san1 * san2;
  print('result: $result');
  return result;
}

num kemituu(num san1, num san2) {
  num result = san1 - san2;
  print('result: $result');
  return result;
}

num koshuu() {
  num summa = 4 + 6;
  print('summa: $summa');
  return summa;
}

num san = 10;

num koshuu2(
  num san1,
  num san2,
  String text,
) {
  num summa2 = san1 + san2;
  print('summa2: $summa2');
  return summa2;
}

num koshuu3({
  required num san1,
  required num san2,
  String? text,
}) {
  num summa2 = san1 + san2;
  print('summa2: $summa2');
  return summa2;
}

// void salam() {
//   print('Salam');
// }

// int san() {
//   int summa = 1 + 2;
//   return summa;
// }

// String text() {
//   String kurs13 = 'Kyrgyzstan';
//   return kurs13;
// }
