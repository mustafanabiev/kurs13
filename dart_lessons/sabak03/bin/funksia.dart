String item = 'Kyrgyz';
void main() {
  text(parametr: 'Kurs13', jashy: 20);

  kushuu(
    birinchiSan: 20,
    ekinchiSan: 20,
  );
}

void text({String? parametr, int? jashy}) {
  print('Parametr: $parametr');
}

void kushuu({
  required int birinchiSan,
  required int ekinchiSan,
}) {
  var summa = birinchiSan + ekinchiSan;
  print('Summa: $summa');
}
