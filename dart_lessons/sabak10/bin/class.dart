void main() {
  String text = 'Salam';

  WebDeveloper w1 = WebDeveloper(tili: 'Java', jashy: 30, aty: 'Asan');

  print('aty: ${w1.aty}');
  print('jashy: ${w1.jashy}');
  print('tili: ${w1.tili}');
  w1.jumushu();

  print('--------------------------------');

  MobileDeveloper m1 = MobileDeveloper(aty: 'Ailin', jashy: 29, tili: 'Dart');

  print('aty: ${m1.aty}');
  print('jashy: ${m1.jashy}');
  print('tili: ${m1.tili}');
  m1.jumushu();
}

class Developer {
  Developer({
    required this.aty,
    required this.jashy,
    required this.tili,
  });

  String aty;
  int jashy;
  String tili;

  void jumushu() {
    print('kodjazat');
  }
}

class MobileDeveloper extends Developer {
  MobileDeveloper({
    required super.aty,
    required super.jashy,
    required super.tili,
  });

  @override
  void jumushu() {
    print('mobile tirkeme jasait');
  }
}

class WebDeveloper extends Developer {
  WebDeveloper({
    required super.aty,
    required super.jashy,
    required super.tili,
  });

  @override
  void jumushu() {
    print('web site jasait');
  }
}
