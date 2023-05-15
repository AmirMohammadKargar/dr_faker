import 'dart:math';

String generateFakeAddressFa() {
  final random = Random();
  final streetNames = [
    'ولیعصر',
    'بلوار گلستان',
    'بزرگراه شهیدان',
    'آفریقا',
    'شهید بهشتی',
    'فاطمی',
    'کشاورز',
    'جمهوری',
    'شریعتی',
    'استاد نجات الهی'
  ];
  final cities = <String, List>{
    'تهران': [
      'شاهدشهر',
      'پیشوا',
      'جوادآباد',
      'ارجمند',
      'ری',
      'نصیرشهر',
      'رودهن',
      'اندیشه',
    ],
    'اصفهان': [
      'زاینده رود',
      'خورزوق',
      'قهدریجان',
      'شاهین شهر',
      'بهارستان',
      'چمگردان',
      'دهاقان',
      'برف انبار',
    ],
    'فارس': [
      'کازرون',
      'فدامی',
      '	خومه زار',
      'سلطان شهر',
      'فیروزآباد',
      'دبیران',
      'باب انار',
      'فارس',
    ],
    'یزد': [
      'میبد',
      'یزد',
      'اردکان',
      'تفت',
      'بافق',
    ]
  };
  final states = ['تهران', 'اصفهان', 'فارس', 'یزد'];
  final zipCodes = ['1234567890', '0987654321', '1357902468', '8642097531'];

  final streetName = streetNames[random.nextInt(streetNames.length)];
  final streetNumber = random.nextInt(1000) + 1;
  final state = states[random.nextInt(states.length)];
  final city = cities[state]![random.nextInt(cities[state]!.length)];
  final zipCode = zipCodes[random.nextInt(zipCodes.length)];

  return '$state $city ,خیابان $streetName، پلاک $streetNumber کدپستی $zipCode';
}
