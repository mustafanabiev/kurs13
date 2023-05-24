void main() {
  Olko olko = Olko(name: 'Kyrgyzstan', kalky: 7000000, jery: 200000);

  print(olko.name);
  print(olko.kalky);
  print(olko.jery);

  Olko olko2 = Olko(name: 'Kazakstan', kalky: 20000000);

  print(olko2.name);
  print(olko2.kalky);

  Olko olko3 = Olko(name: 'Urbekstan', kalky: 30000000, jery: 200000);

  print(olko3.name);
  print(olko3.kalky);
  print(olko3.jery);

  // Olko2 olko2 = Olko2();

  // Olko3 olko3 = Olko3();

  // print(olko2.name);
  // print(olko2.kalky);

  // print(olko3.name);
  // print(olko3.kalky);
}

class Olko {
  const Olko({
    required this.name,
    required this.kalky,
    this.jery,
  });

  final String name;
  final int kalky;
  final int? jery;
}

// class Olko2 {
//   String name = 'Kazakstan';
//   int kalky = 20000000;
// }

// class Olko3 {
//   String name = 'Urbekstan';
//   int kalky = 30000000;
// }
