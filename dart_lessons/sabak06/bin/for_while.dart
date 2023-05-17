void main() {
  List sandar = <num>[2, 4, 3, 1.9, 7, 3.4, 1, 7, 8, 33];
  List jupsandar = <num>[];
  List taksandar = <num>[];
  List bolchoksandar = <num>[];

  for (num san in sandar) {
    num result = san % 2;

    if (result == 0) {
      jupsandar.add(san);
    } else if (result == 1) {
      taksandar.add(san);
    } else {
      bolchoksandar.add(san);
    }
  }
  print('sandar: $sandar');
  print('jupsandar: $jupsandar');
  print('taksandar: $taksandar');
  print('bolchok sandar: $bolchoksandar');
}

  // for (int i = 0; i <= 10; i++) {
  //   print(i);
  // }
  