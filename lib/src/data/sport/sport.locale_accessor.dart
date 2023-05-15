import 'package:fl_faker/src/data/sport/sports.en.dart';
import 'package:fl_faker/src/data/sport/sports.fa.dart';
import 'package:fl_faker/src/locale.enum.dart';

List<String> sportsLocaleAccessor(CustomLocale locale) {
  switch (locale) {
    case CustomLocale.en:
      return sports;
    case CustomLocale.fa:
      return sportsFa;
  }
}
