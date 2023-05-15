import 'package:fl_faker/src/data/person/person.en.dart';
import 'package:fl_faker/src/data/person/person.fa.dart';
import 'package:fl_faker/src/locale.enum.dart';

List<String> firstnameLocaleAccessor(CustomLocale locale) {
  switch (locale) {
    case CustomLocale.en:
      return firstname;
    case CustomLocale.fa:
      return firstnameFa;
  }
}

List<String> lastnameLocaleAccessor(CustomLocale locale) {
  switch (locale) {
    case CustomLocale.en:
      return lastnames;
    case CustomLocale.fa:
      return lastnamesFa;
  }
}
