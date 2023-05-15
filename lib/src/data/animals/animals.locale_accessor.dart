import 'package:fl_faker/src/data/animals/animals.en.dart';
import 'package:fl_faker/src/data/animals/animals.fa.dart';
import 'package:fl_faker/src/locale.enum.dart';

List<String> animalsLocaleAccessor(CustomLocale locale) {
  switch (locale) {
    case CustomLocale.en:
      return animals;
    case CustomLocale.fa:
      return animalsFa;
  }
}
