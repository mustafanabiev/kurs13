class Suroo {
  const Suroo({
    required this.text,
    required this.image,
    required this.jooptor,
  });

  final String text;
  final String image;
  final List<Joop> jooptor;
}

class Joop {
  const Joop({
    required this.text,
    this.isTrue = false,
  });
  final String text;
  final bool isTrue;
}

List<Suroo> asiaQuestions = [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10];

List<Suroo> europaQuestions = [s4, s5, s6, s7, s10, s1, s2, s3, s8, s9];

const s1 = Suroo(
  text: 'Ашхабат',
  image: 'asia/ashhabad.jpeg',
  jooptor: [
    Joop(text: 'Кыргызстан'),
    Joop(text: 'Корея'),
    Joop(text: 'Афганистан'),
    Joop(text: 'Турмонистан', isTrue: true),
  ],
);

const s2 = Suroo(
  text: 'Астана',
  image: 'asia/astana.jpeg',
  jooptor: [
    Joop(text: 'Казакстан', isTrue: true),
    Joop(text: 'Россия'),
    Joop(text: 'Япония'),
    Joop(text: 'Украинв'),
  ],
);

const s3 = Suroo(
  text: 'Бишкек',
  image: 'asia/bishkek.jpeg',
  jooptor: [
    Joop(text: 'Сингапур'),
    Joop(text: 'Малазия'),
    Joop(text: 'Кыргызстан', isTrue: true),
    Joop(text: 'Тайвань'),
  ],
);

const s4 = Suroo(
  text: 'Душанбе',
  image: 'asia/dushanbe.jpeg',
  jooptor: [
    Joop(text: 'Кыргызстан'),
    Joop(text: 'Тажикстан', isTrue: true),
    Joop(text: 'Кытай'),
    Joop(text: 'Озбекстан'),
  ],
);

const s5 = Suroo(
  text: 'Ню-Дели',
  image: 'asia/new-delhi.jpeg',
  jooptor: [
    Joop(text: 'Иран'),
    Joop(text: 'Сауд Аравиясы'),
    Joop(text: 'Индия', isTrue: true),
    Joop(text: 'Сирия'),
  ],
);

const s6 = Suroo(
  text: 'Пекин',
  image: 'asia/pekin.jpeg',
  jooptor: [
    Joop(text: 'Кытай', isTrue: true),
    Joop(text: 'Япония'),
    Joop(text: 'Казакстан'),
    Joop(text: 'Сирия'),
  ],
);

const s7 = Suroo(
  text: 'Сеул',
  image: 'asia/seul.jpeg',
  jooptor: [
    Joop(text: 'Сингапур'),
    Joop(text: 'Иран'),
    Joop(text: 'Кыргызстан'),
    Joop(text: 'Корея', isTrue: true),
  ],
);

const s8 = Suroo(
  text: 'Ташкент',
  image: 'asia/tashkent.jpeg',
  jooptor: [
    Joop(text: 'Украинв'),
    Joop(text: 'Озбекстан', isTrue: true),
    Joop(text: 'Турмонистан'),
    Joop(text: 'Малазия'),
  ],
);

const s9 = Suroo(
  text: 'Токио',
  image: 'asia/tokyo.jpeg',
  jooptor: [
    Joop(text: 'Кыргызстан'),
    Joop(text: 'Индонезия'),
    Joop(text: 'Ветнам'),
    Joop(text: 'Япония', isTrue: true),
  ],
);

const s10 = Suroo(
  text: 'Улан Батор',
  image: 'asia/ulan_bator.jpeg',
  jooptor: [
    Joop(text: 'Азербайжан'),
    Joop(text: 'Иран'),
    Joop(text: 'Монголия', isTrue: true),
    Joop(text: 'Ветнам'),
  ],
);
