import 'dart:io';

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync() ?? '');

  String words = numberToWords(number);

  print("In Words: $words");
}

String numberToWords(int number) {
  List<String> wordsList = [];

  while (number > 0) {
    int digit = number % 10;
    wordsList.add(digitToWord(digit));
    number ~/= 10;
  }

  return wordsList.reversed.join(' ');
}

String digitToWord(int digit) {
  switch (digit) {
    case 0:
      return "Zero";
    case 1:
      return "One";
    case 2:
      return "Two";
    case 3:
      return "Three";
    case 4:
      return "Four";
    case 5:
      return "Five";
    case 6:
      return "Six";
    case 7:
      return "Seven";
    case 8:
      return "Eight";
    case 9:
      return "Nine";
    default:
      return "";
  }
}
