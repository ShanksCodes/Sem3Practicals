bool checkNumberInPairs(List<int> numbers, int target) {
  for (int i = 0; i < numbers.length - 1; i++) {
    if (numbers[i] != target && numbers[i + 1] != target) {
      return false;
    }
  }
  return true;
}

void main() {
  List<int> numbers = [1, 2, 2, 3, 3, 2, 2, 1];
  int target = 2;

  bool result = checkNumberInPairs(numbers, target);

  if (result) {
    print("$target appears in every pair of adjacent integers.");
  } else {
    print("$target does not appear in every pair of adjacent integers.");
  }
}
