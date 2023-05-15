import 'package:fl_faker/src/data/colors/colors.en.dart';
import 'package:fl_faker/src/data/colors/colors.fa.dart';
import 'package:fl_faker/src/locale.enum.dart';

List<String> colorsLocalAccessor(CustomLocale locale) {
  switch (locale) {
    case CustomLocale.en:
      return colors;
    case CustomLocale.fa:
      return colorsFa;
  }
}

List<String> commonColorsLocalAccessor(CustomLocale locale) {
  switch (locale) {
    case CustomLocale.en:
      return commonColors;
    case CustomLocale.fa:
      return commonColorsFa;
  }
}
