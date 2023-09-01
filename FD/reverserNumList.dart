import 'dart:io';

void main() {
  print("Enter a list of numbers separated by spaces:");
  String input = stdin.readLineSync() ?? '';

  List<int> numbers = input
      .split(' ')
      .map((str) => int.tryParse(str) ?? 0) // Parse input to integers
      .toList();

  List<int> reversedNumbers = reverseDigitsInList(numbers);

  print("Reversed List: $reversedNumbers");
}

List<int> reverseDigitsInList(List<int> list) {
  List<int> reversedList = [];

  for (int number in list) {
    int reversedNumber = reverseDigits(number);
    reversedList.add(reversedNumber);
  }

  return reversedList;
}

int reverseDigits(int number) {
  int reversed = 0;

  while (number != 0) {
    int digit = number % 10;
    reversed = reversed * 10 + digit;
    number ~/= 10;
  }

  return reversed;
}
