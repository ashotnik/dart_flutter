import 'dart:io';

void writeInFile(str, file) {
  file.writeAsString(str);
}

void main(List<String> args) {
  File file = new File('./Files/test.txt');
  String txt = 'Hello Melman';
  writeInFile(txt, file);
}
