void main() {
  Manas manas = Manas(
    name: 'Manas',
    jashy: 30,
    koldongonBuiumu: 'Kylych',
  );

  print(manas.name);
  print(manas.jashy);
  print(manas.koldongonBuiumu);
  manas.jumushu();

  Kanykei kanykei = Kanykei(
    name: 'Kanykei',
    jashy: 25,
    koldongonBuiumu: 'Idish-Ayak',
  );

  print(kanykei.name);
  print(kanykei.jashy);
  print(kanykei.koldongonBuiumu);
  kanykei.jumushu();

  Semetei semetei = Semetei(
    name: 'Semetei',
    jashy: 2,
    koldongonBuiumu: 'Oiunchuk',
  );

  print(semetei.name);
  print(semetei.jashy);
  print(semetei.koldongonBuiumu);
  semetei.jumushu();
}

class Adam {
  const Adam({
    required this.name,
    required this.jashy,
    required this.koldongonBuiumu,
  });

  final String name;
  final int jashy;
  final String koldongonBuiumu;

  void jumushu() {
    print('Elin korgoit');
  }
}

// extends => muras aluu. geneticalik muras alat
// @override => partent classtagu metheddu child classta kairadan ozgortup jazuu
// super => child classtyn proportysynyn maanisin parent classka otkorup beret

class Manas extends Adam {
  const Manas({
    required super.name,
    required super.jashy,
    required super.koldongonBuiumu,
  });
}

class Kanykei extends Adam {
  const Kanykei({
    required super.name,
    required super.jashy,
    required super.koldongonBuiumu,
  });

  @override
  void jumushu() {
    print('Tamak jasait');
  }
}

class Semetei extends Adam {
  const Semetei({
    required super.name,
    required super.jashy,
    required super.koldongonBuiumu,
  });

  @override
  void jumushu() {
    print('Uktait');
  }
}
