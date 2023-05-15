import 'dart:math';

enum LoremOptions {
  words,
  sentences,
  paragraphs,
}

String generateRandomLoremText({
  int paragraphs = 3,
  int sentencesPerParagraph = 4,
  int wordsPerSentence = 6,
  required List<LoremOptions> options,
  List<String>? customWords,
}) {
  final loremWords = customWords ??
      [
        'Lorem',
        'ipsum',
        'dolor',
        'sit',
        'amet',
        'consectetur',
        'adipiscing',
        'elit',
        'sed',
        'do',
        'eiusmod',
        'tempor',
        'incididunt',
        'ut',
        'labore',
        'et',
        'dolore',
        'magna',
        'aliqua.'
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
