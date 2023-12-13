import 'dart:io';
import 'dart:convert';
writeSum(Summary){
  new File('Files/sum.txt').create(recursive: true).then((File file) {
      file.writeAsString(Summary);
    });
}

void readJson() {
  File file = new File('./Files/nums.json');
  String content = file.readAsStringSync();
  num sum = 0;
  final parsedJson = jsonDecode(content);
  for (int data in parsedJson['numbers']) {
    sum += data;
    
  }

  writeSum(sum.toString());
}

void main(List<String> args) {
  readJson();
}
