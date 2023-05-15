import 'package:fl_faker/src/data/lorem/lorem.en.dart';
import 'package:fl_faker/src/data/lorem/lorem.fa.dart';
import 'package:fl_faker/src/locale.enum.dart';

String loremLocaleAccessor(
  CustomLocale locale, {
  int paragraphs = 3,
  int sentencesPerParagraph = 4,
  int wordsPerSentence = 6,
  required List<LoremOptions> options,
  List<String>? customWords,
}) {
  switch (locale) {
    case CustomLocale.en:
      return generateRandomLoremText(
          options: options,
          paragraphs: paragraphs,
          wordsPerSentence: wordsPerSentence,
          sentencesPerParagraph: sentencesPerParagraph,
          customWords: customWords);
    case CustomLocale.fa:
      return generateRandomLoremTextFa(
          options: options,
          paragraphs: paragraphs,
          wordsPerSentence: wordsPerSentence,
          sentencesPerParagraph: sentencesPerParagraph,
          customWords: customWords);
  }
}
