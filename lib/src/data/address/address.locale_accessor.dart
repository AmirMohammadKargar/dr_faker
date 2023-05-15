import 'package:fl_faker/src/data/address/address.en.dart';
import 'package:fl_faker/src/data/address/address.fa.dart';
import 'package:fl_faker/src/locale.enum.dart';

String addressLocaleAccessor(CustomLocale locale) {
  switch (locale) {
    case CustomLocale.en:
      return generateFakeAddress();
    case CustomLocale.fa:
      return generateFakeAddressFa();
  }
}
