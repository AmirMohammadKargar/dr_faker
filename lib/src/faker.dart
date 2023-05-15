import 'dart:math';

import 'package:fl_faker/src/data/address/address.locale_accessor.dart';
import 'package:fl_faker/src/data/animals/animals.locale_accessor.dart';
import 'package:fl_faker/src/data/colors/colors.locale_accessor.dart';
import 'package:fl_faker/src/data/email/email.dart';
import 'package:fl_faker/src/data/lorem/lorem.locale_accessor.dart';
import 'package:fl_faker/src/data/person/person.locale_accessor.dart';
import 'package:fl_faker/src/data/sport/sport.locale_accessor.dart';
import 'package:fl_faker/src/locale.enum.dart';

import 'data/lorem/lorem.en.dart';

class FlFaker {
  final CustomLocale locale;
  FlFaker({required this.locale});

  String name() {
    var len = firstnameLocaleAccessor(locale).length;
    Random random = Random();
    int randomNumber = random.nextInt(len);
    return firstnameLocaleAccessor(locale)[randomNumber];
  }

  String lastname() {
    var len = lastnameLocaleAccessor(locale).length;
    Random random = Random();
    int randomNumber = random.nextInt(len);
    return lastnameLocaleAccessor(locale)[randomNumber];
  }

  String fullname() {
    var lastName = lastname();
    var firstName = name();
    return '$firstName $lastName';
  }

  String email() {
    var len = emails.length;
    Random random = Random();
    int randomNumber = random.nextInt(len);
    return emails[randomNumber];
  }

  String animal() {
    var len = animalsLocaleAccessor(locale).length;
    Random random = Random();
    int randomNumber = random.nextInt(len);
    return animalsLocaleAccessor(locale)[randomNumber];
  }

  String color() {
    var len = colorsLocalAccessor(locale).length;
    Random random = Random();
    int randomNumber = random.nextInt(len);
    return colorsLocalAccessor(locale)[randomNumber];
  }

  String commonColor() {
    var len = commonColorsLocalAccessor(locale).length;
    Random random = Random();
    int randomNumber = random.nextInt(len);
    return commonColorsLocalAccessor(locale)[randomNumber];
  }

  String sport() {
    var len = sportsLocaleAccessor(locale).length;
    Random random = Random();
    int randomNumber = random.nextInt(len);
    return sportsLocaleAccessor(locale)[randomNumber];
  }

  String generateLorem({
    int paragraphs = 3,
    int sentencesPerParagraph = 4,
    int wordsPerSentence = 6,
    required List<LoremOptions> options,
    List<String>? customWords,
  }) {
    return loremLocaleAccessor(locale,
        options: options,
        paragraphs: paragraphs,
        sentencesPerParagraph: sentencesPerParagraph,
        wordsPerSentence: wordsPerSentence,
        customWords: customWords);
  }

  String address() {
    return addressLocaleAccessor(locale);
  }
}
