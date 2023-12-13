import 'dart:io';

void readFileAsync() {
  File file = new File('./Files/test.txt');
  String content = file.readAsStringSync();
  print(content);
}

void main(List<String> args) {
  readFileAsync();
}
