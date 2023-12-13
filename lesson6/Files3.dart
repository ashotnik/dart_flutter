import 'dart:io';

void checkAndWrite(Cont) {
  // imagePath = check('Files/output.txt');
  String fName = "Files/output.txt";
  final Have = File(fName).existsSync();
  if (!Have) {
    new File(fName).create(recursive: true).then((File file) {
      file.writeAsString(Cont);
    });
  } else {
    File(fName).writeAsString(Cont);
  }
}

void readFileAsync() {
  File file = new File('./Files/test.txt');
  String content = file.readAsStringSync();
  checkAndWrite(content);
}

void main(List<String> args) {
  readFileAsync();
}
