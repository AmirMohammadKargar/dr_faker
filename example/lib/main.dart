import 'package:fl_faker/fl_faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _value = '';
  CustomLocale _locale = CustomLocale.en;

  void _commonColor() {
    var fake = FlFaker(locale: _locale);
    setState(() {
      _value = fake.commonColor();
    });
  }

  void _color() {
    var fake = FlFaker(locale: _locale);
    setState(() {
      _value = fake.color();
    });
  }

  void _animal() {
    var fake = FlFaker(locale: _locale);
    setState(() {
      _value = fake.animal();
    });
  }

  void _firstname() {
    var fake = FlFaker(locale: _locale);
    setState(() {
      _value = fake.name();
    });
  }

  void _lastname() {
    var fake = FlFaker(locale: _locale);
    setState(() {
      _value = fake.lastname();
    });
  }

  void _fullname() {
    var fake = FlFaker(locale: _locale);
    setState(() {
      _value = fake.fullname();
    });
  }

  void _email() {
    var fake = FlFaker(locale: _locale);
    setState(() {
      _value = fake.email();
    });
  }

  void _lorem() {
    var fake = FlFaker(locale: _locale);
    setState(() {
      _value = fake.generateLorem(options: [
        LoremOptions.words,
        LoremOptions.paragraphs,
        LoremOptions.sentences
      ], wordsPerSentence: 3, sentencesPerParagraph: 1, paragraphs: 1);
    });
  }

  void _changeLocalFa() {
    setState(() {
      _locale = CustomLocale.fa;
    });
  }

  void _changeLocalEn() {
    setState(() {
      _locale = CustomLocale.en;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              _value,
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
            Text(
              'Locale is: ${_locale.name}',
              style: Theme.of(context).textTheme.headline5,
            ),
            ElevatedButton(
              onPressed: _color,
              child: const Text('Color'),
            ),
            ElevatedButton(
              onPressed: _commonColor,
              child: const Text('Common Color'),
            ),
            ElevatedButton(
              onPressed: _animal,
              child: const Text('Animal'),
            ),
            ElevatedButton(
              onPressed: _firstname,
              child: const Text('Firstname'),
            ),
            ElevatedButton(
              onPressed: _lastname,
              child: const Text('Lastname'),
            ),
            ElevatedButton(
              onPressed: _fullname,
              child: const Text('Fullname'),
            ),
            ElevatedButton(
              onPressed: _email,
              child: const Text('Email'),
            ),
            ElevatedButton(
              onPressed: _lorem,
              child: const Text('Lorem'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: _changeLocalFa,
                  child: const Text('Change Locale Fa'),
                ),
                ElevatedButton(
                  onPressed: _changeLocalEn,
                  child: const Text('Change Locale En'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
