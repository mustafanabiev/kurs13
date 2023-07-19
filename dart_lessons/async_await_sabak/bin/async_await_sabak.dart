void main() async {
  // salamBeruu();

  // print('Salam');

  // final lastName = getLastName();
  // print(lastName);

  // final text = await getName();
  // print(text);
  await Future.delayed(Duration(seconds: 6));
  print(await getName());
  print(10);
  print(11);
}

// async - ubakitti ala turgan funksia
// await - kutuu
// Future - kelechek

String getLastName() {
  return 'Uson';
}

Future<String> getName() async {
  await Future.delayed(Duration(seconds: 5));
  return 'Asan';
}

Future<void> salamBeruu() async {
  await Future.delayed(Duration(seconds: 3));
  print('Assalomu aleikum');
}
