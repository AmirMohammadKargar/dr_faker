import 'dart:math';

import 'package:fl_faker/src/data/lorem/lorem.en.dart';

String generateRandomLoremTextFa({
  int paragraphs = 3,
  int sentencesPerParagraph = 4,
  int wordsPerSentence = 6,
  required List<LoremOptions> options,
  List<String>? customWords,
}) {
  final loremWords = customWords ??
      [
        'لورم',
        'ایپسوم',
        'دلور',
        'سیت',
        'امت',
        'کونسکتور',
        'ادیپیسینگ',
        'الیت',
        'سد',
        'دو',
        'ایوسمود',
        'تمپور',
        'اینسیدیونت',
        'ات',
        'لابوره',
        'است',
        'دلوره',
        'مگنا',
        'آلیکوا.'
      ];

  final random = Random();
  final buffer = StringBuffer();

  for (var p = 0; p < paragraphs; p++) {
    if (options.contains(LoremOptions.paragraphs)) {
      buffer.write(loremWords.join(' '));
      buffer.write('\n\n');
      continue;
    }

    for (var s = 0; s < sentencesPerParagraph; s++) {
      if (options.contains(LoremOptions.sentences)) {
        buffer.write(loremWords.join(' '));
        buffer.write('. ');
        continue;
      }

      for (var w = 0; w < wordsPerSentence; w++) {
        if (options.contains(LoremOptions.words)) {
          buffer.write(loremWords.join(' '));
          buffer.write(' ');
          break;
        }

        final wordIndex = random.nextInt(loremWords.length);
        buffer.write(loremWords[wordIndex]);
        if (w < wordsPerSentence - 1) {
          buffer.write(' ');
        }
      }

      buffer.write('. ');
    }

    buffer.write('\n\n');
  }

  return buffer.toString();
}
