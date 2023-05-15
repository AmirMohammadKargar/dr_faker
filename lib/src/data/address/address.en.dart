import 'dart:math';

String generateFakeAddress() {
  final random = Random();
  final streetNames = [
    'Elm Street',
    'Cedar Lane',
    'Washington',
    'Park',
    'Cedar',
    'Pine Street',
    'Maple Avenue',
    'Broadway'
  ];
  final cities = [
    'New York',
    'Los Angeles',
    'Chicago',
    'Houston',
    'Phoenix',
    'Philadelphia',
    'San Antonio',
    'San Diego',
    'Dallas'
  ];
  final states = ['NY', 'CA', 'IL', 'TX', 'FL', 'MI', 'GA', 'PA'];
  final zipCodes = ['10001', '90001', '60601', '77001'];

  final streetName = streetNames[random.nextInt(streetNames.length)];
  final streetNumber = random.nextInt(1000) + 1;
  final city = cities[random.nextInt(cities.length)];
  final state = states[random.nextInt(states.length)];
  final zipCode = zipCodes[random.nextInt(zipCodes.length)];

  return '$streetNumber $streetName, $city, $state $zipCode';
}
