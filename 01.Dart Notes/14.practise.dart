class Seraching {
  List _arr = [10, 34, 12, 37, 89];

  void displayArray() {
    print(_arr);
  }

  //linear search..
  int linearSearch({required int target}) {
    for (int i = 0; i < _arr.length; i++) {
      if (_arr[i] == target) return i;
    }
    return -1;
  }

  //Binary Search

  int binarySearch({required int target}) {
    int s = 0;
    int e = _arr.length - 1;

    while (s <= e) {
      int mid = (s + e) ~/ 2;

      if (_arr[mid] == target)
        return mid;
      else if (_arr[mid] > target)
        e = mid - 1;
      else
        s = mid + 1;
    }

    return -1; // Target not found
  }
}

void main() {
  Seraching s1 = new Seraching();
  s1.displayArray();
  print("Item found it index : " + s1.linearSearch(target: 37).toString());
  print("Item found it index : " + s1.binarySearch(target: 12).toString());
  print("Item found it index : " + s1.linearSearch(target: 37).toString());
}
